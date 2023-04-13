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
    apiKey: 'AIzaSyDTLbG8KQibNgyyhLTDXqIAwEfaz2SnsMg',
    appId: '1:763017482091:web:0dcaa7252152c2c9d2062e',
    messagingSenderId: '763017482091',
    projectId: 'taxi-app-bbb59',
    authDomain: 'taxi-app-bbb59.firebaseapp.com',
    storageBucket: 'taxi-app-bbb59.appspot.com',
    measurementId: 'G-PST5VVPWDZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBL_xEUbaBvNJ6RpH8ite3bWhoV4W2t8zI',
    appId: '1:763017482091:android:f13993c028687f8ed2062e',
    messagingSenderId: '763017482091',
    projectId: 'taxi-app-bbb59',
    storageBucket: 'taxi-app-bbb59.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBRwO9qKviZ5RY2MXeyE69SPomMtP3mFhg',
    appId: '1:763017482091:ios:99b56d4fc97255b3d2062e',
    messagingSenderId: '763017482091',
    projectId: 'taxi-app-bbb59',
    storageBucket: 'taxi-app-bbb59.appspot.com',
    iosClientId: '763017482091-k21fbh5sbrsg467ie6v9976tfeut2q9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.taxiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBRwO9qKviZ5RY2MXeyE69SPomMtP3mFhg',
    appId: '1:763017482091:ios:99b56d4fc97255b3d2062e',
    messagingSenderId: '763017482091',
    projectId: 'taxi-app-bbb59',
    storageBucket: 'taxi-app-bbb59.appspot.com',
    iosClientId: '763017482091-k21fbh5sbrsg467ie6v9976tfeut2q9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.taxiApp',
  );
}
