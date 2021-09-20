#!/bin/sh

flutter doctor

flutter pub get

flutter analyze .

flutter test .