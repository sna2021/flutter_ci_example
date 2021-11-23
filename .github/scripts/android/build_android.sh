#!/bin/sh

if [[ ${BUILD_FLAVOR} = "prod" ]]
then
  flavor=prod
  target=lib/targets/prod.dart
elif [[ ${BUILD_FLAVOR} = "dev" ]]
then
  flavor=dev
  target=lib/targets/stage.dart
else
  throw "Unsupported flavor:${flavor}"
fi

if [[ ${ANDROID_BUILD_TYPE} = "apk" ]]
then
  type=apk
elif [[ ${ANDROID_BUILD_TYPE} = "appbundle" ]]
then
  type=appbundle
else
  throw "Unsupported build type:${type}"
fi

echo -n "Build flavor:${flavor} type:${type} target:${target}"
flutter build ${type} -t ${target} --release

