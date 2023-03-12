#!/usr/bin/env bash

pushd electron
npm install
npm run build:renderer
popd
rm -rf resources/app
cp -r electron/release/app/dist/renderer resources/app
astilectron-bundler