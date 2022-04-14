# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use base 'basetest';
use strict;
use testapi;

sub installer_tests(){
    # installer - step1
    wait_screen_change {
      for (my $i = 0; $i < 6; $i++){
        send_key('tab');
      }
      send_key('spc');
    }
    wait_still_screen(1);

    # installer - step2
    wait_screen_change {
      send_key('tab');
      send_key('spc');
      for (my $i = 0; $i < 5; $i++){
        send_key('tab');
      }
      send_key('spc');
    }
    wait_still_screen(1);

    # installer - step3
    wait_screen_change {
      for (my $i = 0; $i < 5; $i++){
        send_key('tab');
      }
      send_key('spc');
    }
    wait_still_screen(1);

    # installer - step4
    wait_screen_change {
      for (my $i = 0; $i < 7; $i++){
        send_key('tab');
      }
      send_key('spc');
    }
    wait_still_screen(1);

    # installer - step5
    wait_screen_change {
      for (my $i = 0; $i < 2; $i++){
        send_key('tab');
      }
      send_key('spc');
    }
    wait_still_screen(1);

    # installer - step6
    wait_screen_change {
      send_key('spc');
    }
    wait_still_screen(1);

    # wait for the installer finsh screen to appear (timeout : 10 min)
    check_screen('installer-finish', 600);

    # installer - finish1
    wait_screen_change {
      for (my $i = 0; $i < 2; $i++){
        send_key('tab');
      }
      send_key('spc');
    }
    wait_still_screen(1);

    # installer - finish2
    wait_screen_change {
      send_key('tab');
      send_key('spc');
    }
    wait_still_screen(1);

    # installer - finish3
    wait_screen_change {
      send_key('tab');
      send_key('spc');
    }
    wait_still_screen(1);

    check_screen('reboot');

    # show remove usb notice text
    check_screen('remove-usb');
    send_key('ret');
}

sub run {
    installer_tests;
}

1;
