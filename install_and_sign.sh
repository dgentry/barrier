#!/bin/bash

echo "Signing"
sudo codesign --force --deep --sign - build/bundle/Barrier.app

echo "Installing"
sudo mv /Applications/Barrier.app ./Barrier-old.app && sudo cp -rp build/bundle/Barrier.app /Applications/
