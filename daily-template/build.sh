#!/bin/bash -ex

xcodebuild -project 100DaysOfSwiftUi.xcodeproj -allowProvisioningUpdates -sdk iphonesimulator -configuration Debug -scheme 100DaysOfSwiftUi -destination "name=100DaysOfSwiftUi" -derivedDataPath ./.build clean build | xcode-build-server parse -a
xcrun simctl install 100DaysOfSwiftUi .build/Build/Products/Debug-iphonesimulator/100DaysOfSwiftUi.app
xcrun simctl launch --console-pty --terminate-running-process 100DaysOfSwiftUi com.corybuecker.100DaysOfSwiftUi
