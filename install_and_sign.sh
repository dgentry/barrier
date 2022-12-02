#!/bin/bash

echo "Signing"
sudo codesign --force --deep --sign - build/bundle/Barrier.app

echo "Installing."
sudo rm -rf ./Barrier-old.app
echo "Saving old installed Barrier.app as Barrier-old.app"
sudo mv -f /Applications/Barrier.app ./Barrier-old.app && sudo cp -rp build/bundle/Barrier.app /Applications/
