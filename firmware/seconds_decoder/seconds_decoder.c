#include <common.h>
// #include "../fpga_bitstreams/seconds_decoder.h"

void main()
{
    // FPGA IOs
    configure_gpio(1, GPIO_MODE_USER_STD_INPUT_NOPULL);
    //Blizzard
    configure_gpio(9, GPIO_MODE_USER_STD_INPUT_NOPULL);
    configure_gpio(23, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(29, GPIO_MODE_USER_STD_INPUT_NOPULL);
    configure_gpio(34, GPIO_MODE_USER_STD_INPUT_NOPULL);
    configure_gpio(35, GPIO_MODE_USER_STD_INPUT_NOPULL);
    configure_gpio(37, GPIO_MODE_USER_STD_INPUT_NOPULL);

    // ==
    configure_gpio(24, GPIO_MODE_USER_STD_OUTPUT); // connected to prog_clk
    configure_gpio(19, GPIO_MODE_USER_STD_OUTPUT); // connected to prog_rst
    configure_gpio(18, GPIO_MODE_USER_STD_OUTPUT); // connected to op_rst
    configure_gpio(17, GPIO_MODE_USER_STD_OUTPUT); // connected to isol_n
    configure_gpio(20, GPIO_MODE_USER_STD_OUTPUT); // connected to ccff_head
    configure_gpio(21, GPIO_MODE_USER_STD_OUTPUT); // connected to clk_sel

    // seconds decoder
    configure_gpio(12, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(13, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(26, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(28, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(30, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(31, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(32, GPIO_MODE_USER_STD_OUTPUT);
    configure_gpio(33, GPIO_MODE_USER_STD_OUTPUT);

    gpio_config_load();
    // process_bit_stream(seconds_decoder_size, seconds_decoder);
    while (1){
        config_uart();
        print("ST: seconds_decoder\n");
        configure_mgmt_gpio();
        send_packet(8);
    }
} 
