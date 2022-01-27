#!/bin/sh

##GITHUB_RUN_ID - нужно избавится от этого

echo -n "flutter build ios --no-codesign --build-number=${GITHUB_RUN_ID}"
flutter clean
flutter pub get
cd ios
pod update
cd ..
flutter build ios --no-codesign --build-number=$GITHUB_RUN_ID

# TODO после добавления flavors
# flavor="$BUILD_FLAVOR"
# echo -n "Build ios for ${flavor}"
#if [[ $flavor = "prod" ]]
#then
#  flutter build ios -t lib/targets/prod.dart --flavor prod --no-codesign
#elif [[ $flavor = "dev" ]]
#then
#  flutter build ios -t lib/targets/stage.dart --flavor dev --no-codesign
#else
#  throw "Unsupported flavor:${flavor}"
#fi
