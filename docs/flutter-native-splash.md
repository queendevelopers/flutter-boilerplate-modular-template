# flutter_launcher_icons

The `flutter_native_splash` package creates a customizable splash screen that is displayed while the app is loading. It supports Android, iOS, and web platforms. By default, Flutter uses a white background for the splash screen. [Click to view offical docs](https://pub.dev/packages/flutter_native_splash)

## Getting Started
Merge the following branch into your project
```
git merge module/flutter-native-splash
```

After merging `module/flutter-native-splash` branch, replace image in following files 
- `assets/dev/splash.png`
- `assets/int/splash.png`
- `assets/prod/splash.png` 
After replacing the splash image, generate the new splash using following command:
```
flutter pub get && dart run flutter_native_splash:create --flavors dev,int,prod
```

If you are don't want to use different flavors, only replace the splash image at `assets/prod/splash.png`.
