#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Main script logic
main() {
    rm -rf *.xcodeproj
    rm -f Sources/Info.plist
    xcodegen

    xcrun simctl delete all
    xcrun simctl create 100DaysOfSwiftUI "iPhone 16 Pro"
    xcrun simctl boot 100DaysOfSwiftUI
}

# Execute main if script is not sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi