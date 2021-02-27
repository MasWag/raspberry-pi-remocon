raspberry-pi-remocon
====================

[![ShellCheck](https://github.com/MasWag/raspberry-pi-remocon/actions/workflows/shellcheck.yml/badge.svg?branch=master)](https://github.com/MasWag/raspberry-pi-remocon/actions/workflows/shellcheck.yml)
[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE)

Raspberry Pi と BitTradeOne製の[この基盤](https://amzn.to/2OaemjZ)で賢いリモコンを作るためのスクリプトを生成するスクリプトです。

使い方
------

1. `config.csv` を編集します。 第一列は生成されるスクリプト名で、第二列が操作されるスイッチの番号です。
2. `generate.sh` を実行します。

要求仕様
--------

- OS は Raspberry Pi OS であること
- ユーザは GPIOにアクセスできる必要があるので、`gpio` グループに入っている必要がある

他のハードウェアで使うための改造
--------------------------------

未検証ですが、このスクリプトは他のGPIOで出力を行うスイッチ類に対しても動作すると思われます。その際には、 `sw_to_gpio.tsv` に書いてあるスイッチの番号とGPIOの番号の対応を適宜修正する必要があります。
