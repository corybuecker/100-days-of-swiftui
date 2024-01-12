#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Main script logic
main() {
    rm -rf 100DaysOfSwiftUi.xcodeproj
    rm -f Sources/Info.plist

    xcodegen
    
    # xcodebuild -destination 'platform=iOS Simulator,name=100DaysOfSwiftUI' -allowProvisioningUpdates build

    open 100DaysOfSwiftUi.xcodeproj
}

# Execute main if script is not sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi