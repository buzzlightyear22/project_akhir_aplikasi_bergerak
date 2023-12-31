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
    apiKey: 'AIzaSyBMhCmzi7OSv4k_zEreZ9v5AADoQfnSHaY',
    appId: '1:55067920808:web:62d2b09318bd390cc4359d',
    messagingSenderId: '55067920808',
    projectId: 'projectapk-e9fe6',
    authDomain: 'projectapk-e9fe6.firebaseapp.com',
    storageBucket: 'projectapk-e9fe6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOGe57QfGooLvJWz1ZOfH5DYwFDRCYBXU',
    appId: '1:55067920808:android:5b35a8522e926d5fc4359d',
    messagingSenderId: '55067920808',
    projectId: 'projectapk-e9fe6',
    storageBucket: 'projectapk-e9fe6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDr7XPyHfV5aJlLJKBp5_NBPuSnlq4JsT0',
    appId: '1:55067920808:ios:d20fe7c749dd160dc4359d',
    messagingSenderId: '55067920808',
    projectId: 'projectapk-e9fe6',
    storageBucket: 'projectapk-e9fe6.appspot.com',
    iosClientId: '55067920808-kl3hcsrpg9ueh16saairttvnjiavdvu7.apps.googleusercontent.com',
    iosBundleId: 'com.example.theWallUtsArdiansyah',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDr7XPyHfV5aJlLJKBp5_NBPuSnlq4JsT0',
    appId: '1:55067920808:ios:d20fe7c749dd160dc4359d',
    messagingSenderId: '55067920808',
    projectId: 'projectapk-e9fe6',
    storageBucket: 'projectapk-e9fe6.appspot.com',
    iosClientId: '55067920808-kl3hcsrpg9ueh16saairttvnjiavdvu7.apps.googleusercontent.com',
    iosBundleId: 'com.example.theWallUtsArdiansyah',
  );
}
