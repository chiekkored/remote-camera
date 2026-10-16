# SideEye

Flutter foundation for a phone that acts as a camera or as a remote controller.

## Development

Use FVM with Flutter 3.47.7:

```sh
fvm flutter pub get
fvm flutter analyze
fvm flutter test
fvm flutter run
```

The Android application ID and iOS bundle ID are `com.red.sideeye`. The minimum supported versions are Android API 24 and iOS 15. Physical iPhone deployment requires a development signing team and a provisioned device.

## Structure

- `lib/core`: app-wide bindings, routes, result and error types, logging, and future platform services.
- `lib/presentation/controllers`: GetX controllers grouped by feature.
- `lib/presentation/pages`: feature pages and page-local widgets.
- `lib/presentation/common`: reusable UI and the design system.
- `lib/utilities`: constants, enums, extensions, and helpers as needed.

Pages use `GetView` and declare their own `routeName`; `GetPage` registrations and bindings live in `core/routing`. Use `GetWidget` only for a widget that benefits from GetX controller caching. Route pages currently show placeholders. Camera capture, pairing, photo saving, and network communication belong to later phases.

## Permissions

Camera, microphone, and local-network usage descriptions are in the iOS app plist. Add-only photo access prepares for saving captures. The Android manifest declares camera, microphone, networking, and legacy save permission through API 28. On Android 10 and newer, an app can save its own media through MediaStore without storage permission. Request runtime permissions when the relevant feature starts, rather than at launch. The iOS local-network dialog appears when a real local-network operation begins; if Bonjour discovery is added, declare its service types in the plist at that time.
