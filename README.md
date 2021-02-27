raspberry-pi-remocon
====================

[![ShellCheck](https://github.com/MasWag/raspberry-pi-remocon/actions/workflows/shellcheck.yml/badge.svg?branch=master)](https://github.com/MasWag/raspberry-pi-remocon/actions/workflows/shellcheck.yml)
[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE)

Script generator for a smart ir-transmitter using Raspberry Pi and [this board](https://amzn.to/2OaemjZ) by BitTradeOne.

Usage
-----

1. Modify `config.csv`. The first column is for the name of the generated script and the second column is for the number of the switch.
2. Run `generate.sh`

Requirement
----------

- The OS is Raspberry Pi OS.
- The user is in the group `gpio` to have an access to GPIO.

Modification for other hardware
-------------------------------

Although I have not tried, probably this script also works for the switches controlled by GPIO. Please modify the correspondence between the switch number and the GPIO number in `sw_to_gpio.tsv`.
