#!/usr/bin/env python3

from pyftdi.ftdi import Ftdi
import time
import sys, os
from pyftdi.spi import SpiController
from array import array as Array
import binascii
import struct
from io import StringIO


SR_WIP = 0b00000001  # Busy/Work-in-progress bit
SR_WEL = 0b00000010  # Write enable bit
SR_BP0 = 0b00000100  # bit protect #0
SR_BP1 = 0b00001000  # bit protect #1
SR_BP2 = 0b00010000  # bit protect #2
SR_BP3 = 0b00100000  # bit protect #3
SR_TBP = SR_BP3      # top-bottom protect bit
SR_SP = 0b01000000
SR_BPL = 0b10000000
SR_PROTECT_NONE = 0  # BP[0..2] = 0
SR_PROTECT_ALL = 0b00011100  # BP[0..2] = 1
SR_LOCK_PROTECT = SR_BPL
SR_UNLOCK_PROTECT = 0
SR_BPL_SHIFT = 2

CMD_READ_STATUS = 0x05  # Read status register
CMD_WRITE_ENABLE = 0x06  # Write enable
CMD_WRITE_DISABLE = 0x04  # Write disable
CMD_PROGRAM_PAGE = 0x02  # Write page
CMD_EWSR = 0x50  # Enable write status register
CMD_WRSR = 0x01  # Write status register
CMD_ERASE_SUBSECTOR = 0x20
CMD_ERASE_HSECTOR = 0x52
CMD_ERASE_SECTOR = 0xD8
# CMD_ERASE_CHIP = 0xC7
CMD_ERASE_CHIP = 0x60
CMD_RESET_CHIP = 0x99
CMD_JEDEC_DATA = 0x9f

CMD_READ_LO_SPEED = 0x03  # Read @ low speed
CMD_READ_HI_SPEED = 0x0B  # Read @ high speed
ADDRESS_WIDTH = 3

JEDEC_ID = 0xEF
DEVICES = {0x30: 'W25X', 0x40: 'W25Q'}
SIZES = {0x11: 1 << 17, 0x12: 1 << 18, 0x13: 1 << 19, 0x14: 1 << 20,
         0x15: 2 << 20, 0x16: 4 << 20, 0x17: 8 << 20, 0x18: 16 << 20}
SPI_FREQ_MAX = 104  # MHz
CMD_READ_UID = 0x4B
UID_LEN = 0x8  # 64 bits
READ_UID_WIDTH = 4  # 4 dummy bytes
TIMINGS = {'page': (0.0015, 0.003),  # 1.5/3 ms
           'subsector': (0.200, 0.200),  # 200/200 ms
           'sector': (1.0, 1.0),  # 1/1 s
           'bulk': (32, 64),  # seconds
           'lock': (0.05, 0.1),  # 50/100 ms
           'chip': (4, 11)}
# FEATURES = (SerialFlash.FEAT_SECTERASE |
#             SerialFlash.FEAT_SUBSECTERASE |
#             SerialFlash.FEAT_CHIPERASE)

CARAVEL_PASSTHRU = 0xC4
CARAVEL_STREAM_READ = 0x40
CARAVEL_STREAM_WRITE = 0x80
CARAVEL_REG_READ = 0x48
CARAVEL_REG_WRITE = 0x88


def get_status(device):
    return int.from_bytes(device.exchange([CARAVEL_PASSTHRU, CMD_READ_STATUS],1), byteorder='big')


def report_status(jedec):
    if jedec[0] == int('bf', 16):
        print("changing cmd values...")
        print("status reg_1 = {}".format(hex(get_status(slave))))
    else:
        print("status reg_1 = {}".format(hex(get_status(slave))))
        status = slave.exchange([CARAVEL_PASSTHRU, 0x35], 1)
        print("status reg_2 = {}".format(hex(int.from_bytes(status, byteorder='big'))))
        # print("status = {}".format(hex(from_bytes(slave.exchange([CMD_READ_STATUS], 2)[1], byteorder='big'))))


def is_busy(device):
    return get_status(device) & SR_WIP


# This is roundabout but works. . .
s = StringIO()
Ftdi.show_devices(out=s)
devlist = s.getvalue().splitlines()[1:-1]
gooddevs = []
for dev in devlist:
    url = dev.split('(')[0].strip()
    name = '(' + dev.split('(')[1]
    if name == '(Single RS232-HS)':
        gooddevs.append(url)
if len(gooddevs) == 0:
    print('Error:  No matching FTDI devices on USB bus!')
    sys.exit(1)
elif len(gooddevs) > 1:
    print('Error:  Too many matching FTDI devices on USB bus!')
    Ftdi.show_devices()
    sys.exit(1)
else:
    print('Success: Found one matching FTDI device at ' + gooddevs[0])

spi = SpiController(cs_count=2)
# spi.configure('ftdi://::/1')
spi.configure(gooddevs[0])
#spi.configure('ftdi://ftdi:232h:1/1')
slave = spi.get_port(cs=0)  # Chip select is 0 -- for mpw-2

print("Caravel data:")
mfg = slave.exchange([CARAVEL_STREAM_READ, 0x01], 2)
# print("mfg = {}".format(binascii.hexlify(mfg)))
print("   mfg        = {:04x}".format(int.from_bytes(mfg, byteorder='big')))

product = slave.exchange([CARAVEL_REG_READ, 0x03], 1)
# print("product = {}".format(binascii.hexlify(product)))
print("   product    = {:02x}".format(int.from_bytes(product, byteorder='big')))

data = slave.exchange([CARAVEL_STREAM_READ, 0x04], 4)
print("   project ID = {:08x}".format(int('{:032b}'.format(int.from_bytes(data, byteorder='big'))[::-1], 2)))
# print("   project ID = {:08x}".format(int.from_bytes(data, byteorder='big')))

if int.from_bytes(mfg, byteorder='big') != 0x0456:
    exit(2)

k = ''

while (k != 'q'):

    print("\n-----------------------------------\n")
    print("Select option:")
    print("  (1) read CARAVEL registers ")
    print("  (2) read CARAVEL project ID ")
    print("  (3) reset CARAVEL")
    print("  (4) reset Flash")
    print("  (5) read Flash JEDEC codes")
    print("  (6) start flash erase")
    print("  (7) check flash status")
    print("  (8) engage DLL")
    print("  (9) read DLL trim")
    print(" (10) disengage DLL")
    print(" (11) DCO mode")
    print(" (12) full trim")
    print(" (13) zero trim")
    print(" (14) set register value")
    print("  (q) quit")

    print("\n")

    k = input()

    if k == '1':
        for reg in [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12]:
            data = slave.exchange([CARAVEL_REG_READ, reg], 1)
            print("reg {} = {}".format(hex(reg), binascii.hexlify(data)))

    elif k == '2':
            data = slave.exchange([CARAVEL_STREAM_READ, 0x04], 4)
            print("Project ID = {:08x}".format(int('{:032b}'.format(int.from_bytes(data, byteorder='big'))[::-1], 2)))

    elif k == '3':
        # reset CARAVEL
        print("Resetting CARAVEL...")
        slave.write([CARAVEL_REG_WRITE, 0x0b, 0x01])
        slave.write([CARAVEL_REG_WRITE, 0x0b, 0x00])

    elif k == '4':
        # reset Flash
        print("Resetting Flash...")
        slave.write([CARAVEL_PASSTHRU, CMD_RESET_CHIP])

    elif k == '5':
        slave.write([CARAVEL_REG_WRITE, 0x0b, 0x01])
        jedec = slave.exchange([CARAVEL_PASSTHRU, CMD_JEDEC_DATA], 3)
        print("JEDEC = {}".format(binascii.hexlify(jedec)))

    elif k == '6':
        # erase Flash
        print("Starting Flash erase...")
        slave.write([CARAVEL_PASSTHRU, CMD_WRITE_ENABLE])
        slave.write([CARAVEL_PASSTHRU, CMD_ERASE_CHIP])

    elif k == '7':
        if is_busy(slave):
            print("Flash is busy.")
        else:
            print("Flash is NOT busy.")
        print("status reg_1 = {}".format(hex(get_status(slave))))
        status = slave.exchange([CARAVEL_PASSTHRU, 0x35], 1)
        print("status reg_2 = {}".format(hex(int.from_bytes(status, byteorder='big'))))

    elif k == '8':
        print("engaging DLL...")
        slave.write([CARAVEL_REG_WRITE, 0x08, 0x01])
        slave.write([CARAVEL_REG_WRITE, 0x09, 0x00])

    elif k == '9':
        pll_trim = slave.exchange([CARAVEL_STREAM_READ, 0x0d], 4)
        print("pll_trim = {}\n".format(binascii.hexlify(pll_trim)))

    elif k == '10':
        print("disengaging DLL...")
        slave.write([CARAVEL_REG_WRITE, 0x09, 0x01])
        slave.write([CARAVEL_REG_WRITE, 0x08, 0x00])

    elif k == '11':
        print("Clock DCO mode...")
        slave.write([CARAVEL_REG_WRITE, 0x08, 0x03])
        slave.write([CARAVEL_REG_WRITE, 0x09, 0x00])

    elif k == '12':
        print("DCO mode full trim...")
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x0d, 0xff])
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x0e, 0xff])
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x0f, 0xff])
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x10, 0xff])

    elif k == '13':
        print("DCO mode zero trim...")
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x0d, 0x00])
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x0e, 0x00])
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x0f, 0x00])
        pll_trim = slave.exchange([CARAVEL_REG_WRITE, 0x10, 0x00])

    elif k == '14':
        print("Register?")
        r = input()
        reg = int(r, 0)
        print("Value?")
        v = input()
        val = int(v, 0)
        pll_trim = slave.exchange([CARAVEL_STREAM_WRITE, reg, val], 0)

    elif k == 'q':
        print("Exiting...")

    else:
        print('Selection not recognized.\n')

spi.terminate()

