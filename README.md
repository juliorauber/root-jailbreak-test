# flutter_root_jailbreak_detection

Plugin detection for Jailbreak and Root.
It uses [RootBeer](https://github.com/scottyab/rootbeer) on Android,
and [IOSSecuritySuite](https://github.com/securing/IOSSecuritySuite) on iOS.

## iOS Required

The jailbreak detection module uses `canOpenURL(_:)` method and needs that specifying URLs.

Add into your `ios/Runner/Info.plist`

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>undecimus</string>
    <string>sileo</string>
    <string>zbra</string>
    <string>filza</string>
    <string>activator</string>
</array>
```

## Getting Started

```dart
import 'package:flutter_root_jailbreak_detection/flutter_root_jailbreak_detection.dart';

bool isJailbreak = await FlutterRootJailbreakDetection.isJailbreak;
```
