#!/bin/bash

if ! nmcli r wifi | grep -q enabled; then
  echo disabled
  exit
fi

if ! nmcli c show --active | grep -q wifi; then
  echo disconnected
  exit
fi

nmcli -t -f active,ssid,signal d wifi list | grep ^yes | cut -d: -f2-
