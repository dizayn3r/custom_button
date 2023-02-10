<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Flutter Custom Button package lets you add a custom button to your flutter app.

## Installation

1. Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_custom_buttons: ^0.0.1
```

2. You can install packages from the command line with Flutter:

```bash
$ flutter pub get
```

3. Import the package and use it in your Flutter App.

```dart
import 'package:flutter_custom_buttons/flutter_custom_buttons.dart';
```

## Usage

```dart
Buttons
(
  width: 100.0,
  height: 60.0,
  radius: 12.0,
  elevation: 2.0,
  txt: "Button",
  textColor: Colors.white,
  fontSize: 20.0,
  onPressed: () {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Button pressed"),
      ),
    );
  }
)
```