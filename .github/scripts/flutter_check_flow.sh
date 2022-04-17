#!/bin/sh

flutter doctor

flutter clean

flutter pub get

flutter analyze .

# Вернуть когда актуализируются тесты
#flutter test .