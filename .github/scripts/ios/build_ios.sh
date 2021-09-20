#!/bin/sh

var flavor = ENV['BUILD_FLAVOR']

echo -n "Build ios for ${flavor}"

if [[ $flavor = "prod" ]]
then
  flutter build ios -t lib/targets/prod.dart --flavor prod --no-codesign
elif [[ $flavor = "dev" ]]
then
  flutter build ios -t lib/targets/stage.dart --flavor dev --no-codesign
else
  throw "Unsupported flavor:${flavor}"
fi
