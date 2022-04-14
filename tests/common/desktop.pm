# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use base 'basetest';
use strict;
use testapi;
use autotest;

sub gnome_initial_setup_tests(){
    # wait for gnome-initial-setup to appear
    check_screen('gnome-initial-setup-start', 300);
    wait_still_screen(1);
    assert_and_click('gnome-initial-setup-next-button');

    check_screen('gnome-initial-setup-ime');
    wait_still_screen(1);
    assert_and_click('gnome-initial-setup-next-button');

    check_screen('gnome-initial-setup-privacy');
    wait_still_screen(1);
    assert_and_click('gnome-initial-setup-next-button');

    check_screen('gnome-initial-setup-timezone');
    wait_still_screen(1);
    assert_and_click('gnome-initial-setup-timezone-seoul');
    wait_still_screen(1);
    assert_and_click('gnome-initial-setup-next-button');

    check_screen('gnome-initial-setup-online-account');
    wait_still_screen(1);
    assert_and_click('gnome-initial-setup-skip-button');

    check_screen('gnome-initial-setup-user-account');
    wait_still_screen(1);
    type_string('tmaxname');
    assert_and_click('gnome-initial-setup-next-button');

    check_screen('gnome-initial-setup-user-password');
    wait_still_screen(1);
    type_password('tmax1234!');
    send_key('tab');
    type_password('tmax1234!');
    assert_and_click('gnome-initial-setup-next-button');

    check_screen('gnome-initial-setup-finish');
    wait_still_screen(1);
    assert_and_click('gnome-initial-setup-finish-button');

}

sub desktop_start_menu_tests(){
    # wait for the desktop to appear
    check_screen('desktop', 5);
    wait_still_screen(1);
    assert_and_click('desktop-start-menu-button');

    check_screen('gnome-shell-start-menu', 5);
    wait_still_screen(1);
    assert_and_click('desktop-start-menu-button-clicked');

    check_screen('desktop', 5);
    wait_still_screen(1);
}

sub favoriate_app_tests(){
    assert_and_click('desktop-gnome-software-button');

    check_screen('gnome-software-welcome', 10);
    wait_still_screen(1);
    assert_and_click('gnome-software-welcome-button');
    
    check_screen('gnome-software', 5);
    wait_still_screen(1);
    assert_and_click('desktop-nautilus-button');

    check_screen('nautilus', 5);
    wait_still_screen(1);
    assert_and_click('desktop-gnome-control-center-button');

    check_screen('gnome-control-center', 5);
    wait_still_screen(1);
    assert_and_click('desktop-togate-browser-button');

    check_screen('togate-browser', 10);
    wait_still_screen(1);
}

sub yelp_tests(){
    assert_screen('yelp');
    wait_still_screen(1);
    assert_and_click('yelp-exit-button');
}

sub run {
  gnome_initial_setup_tests;
  yelp_tests;
  desktop_start_menu_tests;
  favoriate_app_tests;
}

1;
