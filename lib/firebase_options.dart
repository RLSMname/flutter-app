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
    apiKey: 'AIzaSyAP_87Y33DFsiwfoemFG2xcGgskeKkYlag',
    appId: '1:882127201763:web:7080807aa6fd337566acd6',
    messagingSenderId: '882127201763',
    projectId: 'mockproj-d6b00',
    authDomain: 'mockproj-d6b00.firebaseapp.com',
    storageBucket: 'mockproj-d6b00.appspot.com',
    measurementId: 'G-V5TW6GGJCX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhzE-1qkx0u2QjNzszbOibb_ZKVkFYoPw',
    appId: '1:882127201763:android:4e9d10f4ea05326d66acd6',
    messagingSenderId: '882127201763',
    projectId: 'mockproj-d6b00',
    storageBucket: 'mockproj-d6b00.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCysBjzVjRAS--iasYyK244-LTV-5xnj0c',
    appId: '1:882127201763:ios:b8aafa3895e1978b66acd6',
    messagingSenderId: '882127201763',
    projectId: 'mockproj-d6b00',
    storageBucket: 'mockproj-d6b00.appspot.com',
    iosClientId: '882127201763-i8l2peutn9flvc3nechh103qqobmt11n.apps.googleusercontent.com',
    iosBundleId: 'com.example.testproj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCysBjzVjRAS--iasYyK244-LTV-5xnj0c',
    appId: '1:882127201763:ios:a4c8aacb46acd72c66acd6',
    messagingSenderId: '882127201763',
    projectId: 'mockproj-d6b00',
    storageBucket: 'mockproj-d6b00.appspot.com',
    iosClientId: '882127201763-644ejn9k08kljtkmc485rfe7bgt4cc8g.apps.googleusercontent.com',
    iosBundleId: 'com.example.testproj.RunnerTests',
  );
}
