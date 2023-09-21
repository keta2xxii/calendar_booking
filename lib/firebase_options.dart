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
    apiKey: 'AIzaSyALm89TAp1cjJGT7L269Qvwg_GYYHDJnQY',
    appId: '1:484088917074:web:4193a12c6ed6bb679d038b',
    messagingSenderId: '484088917074',
    projectId: 'dev2earn-app-base',
    authDomain: 'dev2earn-app-base.firebaseapp.com',
    storageBucket: 'dev2earn-app-base.appspot.com',
    measurementId: 'G-Q4BQ9H53WE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvcANAxaBhZLHvwK4r-lx2g5dIaudaty0',
    appId: '1:484088917074:android:ca68e2186a8651989d038b',
    messagingSenderId: '484088917074',
    projectId: 'dev2earn-app-base',
    storageBucket: 'dev2earn-app-base.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBePRHafHOgNUNhkQRT0glXn28dMf7L7Xw',
    appId: '1:484088917074:ios:786ed79782271e149d038b',
    messagingSenderId: '484088917074',
    projectId: 'dev2earn-app-base',
    storageBucket: 'dev2earn-app-base.appspot.com',
    iosClientId: '484088917074-i2boomfqahl6f5kqo46gbbg80k89ism5.apps.googleusercontent.com',
    iosBundleId: 'dev2earn.app.base.flutterBase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBePRHafHOgNUNhkQRT0glXn28dMf7L7Xw',
    appId: '1:484088917074:ios:7dbc0ef948c51a7c9d038b',
    messagingSenderId: '484088917074',
    projectId: 'dev2earn-app-base',
    storageBucket: 'dev2earn-app-base.appspot.com',
    iosClientId: '484088917074-s4rcfg4a97hi158bjalo182a749apihc.apps.googleusercontent.com',
    iosBundleId: 'dev2earn.app.base.flutterBase.RunnerTests',
  );
}