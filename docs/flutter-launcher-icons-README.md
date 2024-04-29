# flutter_launcher_icons

A Flutter package to automatically generate launcher icons for Android, iOS, macOS, web, windows and Linux. No more manually resizing and replacing icons for your Flutter app's launcher! [Click to view offical docs](https://pub.dev/packages/flutter_launcher_icons)

## Getting Started
Merge this branch `git merge module/flutter-launcher-icons`

With module/flutter-launcher-icons simply replace icon in `assets/dev/launcher-icon-dev.png` , `assets/int/launcher-icon-int.png` and `assets/prod/launcher-icon.png` files and generate icon with following command.
```
flutter pub run flutter_launcher_icons
```

### If you are don't want to use flavor use `assets/prod/launcher-icon.png` only.

## More customization
```
  image_path: "assets/images/icon-128x128.png"
  image_path_android: "assets/images/icon-710x599-android.png"
  image_path_ios: "assets/images/icon-1024x1024.png"
  android: true # can specify file name here e.g. "ic_launcher"
  ios: true # can specify file name here e.g. "My-Launcher-Icon"
  adaptive_icon_background: "assets/images/christmas-background.png" # only available for Android 8.0 devices and above
  adaptive_icon_foreground: "assets/images/icon-foreground-432x432.png" # only available for Android 8.0 devices and above
  adaptive_icon_monochrome: "assets/images/icon-monochrome-432x432.png" # only available for Android 13 devices and above
  min_sdk_android: 21 # android min sdk min:16, default 21
  remove_alpha_ios: true
  background_color_ios: "#ffffff"
  web:
    generate: true
    image_path: "assets/images/icon-1024x1024.png"
    background_color: "#hexcode"
    theme_color: "#hexcode"
  windows:
    generate: true
    image_path: "assets/images/icon-1024x1024.png"
    icon_size: 48 # min:48, max:256, default: 48
  macos:
    generate: true
    image_path: "assets/images/icon-1024x1024.png"
    ```