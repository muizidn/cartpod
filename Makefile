clean:
	swift package clean

.build/libSwiftPM.xcconfig:
	mkdir -p .build
	echo "OTHER_LDFLAGS = -lncurses -lsqlite3" > "$@"
	echo "OTHER_CFLAGS = -DSWIFT_PACKAGE" >> "$@"
	echo "SWIFT_VERSION = 4.2" >> "$@"

xcconfig: .build/libSwiftPM.xcconfig

resolve:
	swift package resolve

update:
	swift package update

xcodeproj: xcconfig
	 swift package generate-xcodeproj --xcconfig-overrides .build/libSwiftPM.xcconfig
