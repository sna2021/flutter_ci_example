#!/bin/sh
# Для использования необходим  firebase-tools
#  npm install -g firebase-tools

echo start firebase distribution

firebase appdistribution:distribute $file_path --app $firebase_app_id --token $firebase_token --groups $groups
# пока не работает
# --release-notes $release_notes