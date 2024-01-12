#!/bin/bash -ex

xcodegen
xcrun simctl delete all
xcrun simctl create 100DaysOfSwiftUi "iPhone 14 Pro" "com.apple.CoreSimulator.SimRuntime.iOS-17-4"
xcrun simctl boot 100DaysOfSwiftUi
