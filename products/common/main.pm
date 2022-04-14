# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use strict;
use testapi;
use autotest;

autotest::loadtest 'tests/common/boot.pm';
autotest::loadtest 'tests/common/live.pm';
autotest::loadtest 'tests/common/desktop.pm';

1;
