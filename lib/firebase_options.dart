// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyA3yOl6A1mPIxILwyf9PzoIe8TmRQVvw0M',
    appId: '1:37735954962:web:6dd5e9ac4582e64fab76cb',
    messagingSenderId: '37735954962',
    projectId: 'fitness-app-2ffd5',
    authDomain: 'fitness-app-2ffd5.firebaseapp.com',
    storageBucket: 'fitness-app-2ffd5.firebasestorage.app',
    measurementId: 'G-B1TMGTWD63',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAe6Z7tn3bvW6be6xdRzE20iKsJq3NEfqM',
    appId: '1:37735954962:android:b611a1db8838ffbdab76cb',
    messagingSenderId: '37735954962',
    projectId: 'fitness-app-2ffd5',
    storageBucket: 'fitness-app-2ffd5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDHJcvKTWHU5KJglO2icaNHYz9ek2aI0Q',
    appId: '1:37735954962:ios:561ca9cb678287c5ab76cb',
    messagingSenderId: '37735954962',
    projectId: 'fitness-app-2ffd5',
    storageBucket: 'fitness-app-2ffd5.firebasestorage.app',
    iosBundleId: 'com.example.fitnessApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDHJcvKTWHU5KJglO2icaNHYz9ek2aI0Q',
    appId: '1:37735954962:ios:561ca9cb678287c5ab76cb',
    messagingSenderId: '37735954962',
    projectId: 'fitness-app-2ffd5',
    storageBucket: 'fitness-app-2ffd5.firebasestorage.app',
    iosBundleId: 'com.example.fitnessApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA3yOl6A1mPIxILwyf9PzoIe8TmRQVvw0M',
    appId: '1:37735954962:web:efed070e68457481ab76cb',
    messagingSenderId: '37735954962',
    projectId: 'fitness-app-2ffd5',
    authDomain: 'fitness-app-2ffd5.firebaseapp.com',
    storageBucket: 'fitness-app-2ffd5.firebasestorage.app',
    measurementId: 'G-51DYG4QBEM',
  );
}