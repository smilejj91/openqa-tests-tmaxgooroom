# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use base 'basetest';
use strict;
use testapi;
use autotest;

sub run {
    # wait for bootloader to appear
    check_screen('bootloader');

    # wait for the installer to appear
    check_screen('installer-start', 120);
    wait_still_screen(1);
}

1;
