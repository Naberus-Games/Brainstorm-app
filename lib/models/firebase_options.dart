// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAKW6BXuhHzsvRoRA2By6SwZIj8_PXJRck',
    appId: '1:736209440017:web:d4d49a9ae729b8f6d450b0',
    messagingSenderId: '736209440017',
    projectId: 'brainstorm-223f9',
    authDomain: 'brainstorm-223f9.firebaseapp.com',
    storageBucket: 'brainstorm-223f9.appspot.com',
    measurementId: 'G-WMJH73TKBN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBkDHdd64AcxUZqc31acO4Rc5E_J5oG9k',
    appId: '1:736209440017:android:bf628b908d86838ad450b0',
    messagingSenderId: '736209440017',
    projectId: 'brainstorm-223f9',
    storageBucket: 'brainstorm-223f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCvn-iWwGSxbx7RO7ZpQGCjXm2WK_Zyak',
    appId: '1:736209440017:ios:1815eb3d0fbd650fd450b0',
    messagingSenderId: '736209440017',
    projectId: 'brainstorm-223f9',
    storageBucket: 'brainstorm-223f9.appspot.com',
    iosClientId: '736209440017-m2qgdpt0qupjv4dfo5q8smrr0g89vv3f.apps.googleusercontent.com',
    iosBundleId: 'com.naberusgames.brainstorm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCvn-iWwGSxbx7RO7ZpQGCjXm2WK_Zyak',
    appId: '1:736209440017:ios:93b6590a66ea91f6d450b0',
    messagingSenderId: '736209440017',
    projectId: 'brainstorm-223f9',
    storageBucket: 'brainstorm-223f9.appspot.com',
    iosClientId: '736209440017-gqbph9obdim0ne112c8qtt9lpgpr9egu.apps.googleusercontent.com',
    iosBundleId: 'com.Naberusgames.brainstorm',
  );
}
