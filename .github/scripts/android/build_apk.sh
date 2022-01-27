#!/bin/sh

echo -n "flutter build apk --release
flutter build apk --release

#TODO после добавления flavors
#flavor="$BUILD_FLAVOR"
#
#echo -n "Build ${flavor} apk"
#
#if [[ $flavor = "prod" ]]
#then
#  flutter build apk -t lib/targets/prod.dart --flavor prod --release
#elif [[ $flavor = "dev" ]]
#then
#  flutter build apk -t lib/targets/stage.dart --flavor dev --release
#else
#  throw "Unsupported flavor:${flavor}"
#fi

