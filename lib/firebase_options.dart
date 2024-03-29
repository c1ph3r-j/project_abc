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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAXqll3b-EulSNQs896jWKhWqxpFMS8EcI',
    appId: '1:4092371795:web:155fac99f39c8f2c77b7a6',
    messagingSenderId: '4092371795',
    projectId: 'project-abc-c1ph3rj',
    authDomain: 'project-abc-c1ph3rj.firebaseapp.com',
    storageBucket: 'project-abc-c1ph3rj.appspot.com',
    measurementId: 'G-X9ZQHC3B3T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxNsSDgLINEJh3iEoOiSlXJjGgedLS_0Y',
    appId: '1:4092371795:android:55088ac213a5510077b7a6',
    messagingSenderId: '4092371795',
    projectId: 'project-abc-c1ph3rj',
    storageBucket: 'project-abc-c1ph3rj.appspot.com',
  );
}
