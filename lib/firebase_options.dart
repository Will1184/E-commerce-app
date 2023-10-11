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
    apiKey: 'AIzaSyAfqHlYjeUbiXK6aellr88bmmMb8wjPH4Q',
<<<<<<< HEAD
    appId: '1:856680776236:web:061c0b93c96f2ba1c20789',
=======
    appId: '1:856680776236:web:f91d61d1d3e38febc20789',
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86
    messagingSenderId: '856680776236',
    projectId: 'e-commerce-622df',
    authDomain: 'e-commerce-622df.firebaseapp.com',
    storageBucket: 'e-commerce-622df.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDT1N0wlYz0AamFdoxHR_3xDqrQfB8YjgQ',
<<<<<<< HEAD
    appId: '1:856680776236:android:6253c6975ea05c40c20789',
=======
    appId: '1:856680776236:android:9d07a16711b091d0c20789',
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86
    messagingSenderId: '856680776236',
    projectId: 'e-commerce-622df',
    storageBucket: 'e-commerce-622df.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvO4MUHYr7w4_mZHa1Ru7R_Z-IZkZu5MA',
<<<<<<< HEAD
    appId: '1:856680776236:ios:238f1f4250f99e34c20789',
=======
    appId: '1:856680776236:ios:9542d6d518510e7dc20789',
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86
    messagingSenderId: '856680776236',
    projectId: 'e-commerce-622df',
    storageBucket: 'e-commerce-622df.appspot.com',
    androidClientId: '856680776236-6ul4g1um1tedj2dcq7mpngk9ksgh52n4.apps.googleusercontent.com',
    iosClientId: '856680776236-gln6ktlu8mnr09flo0p94rfif5mvl73n.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvO4MUHYr7w4_mZHa1Ru7R_Z-IZkZu5MA',
<<<<<<< HEAD
    appId: '1:856680776236:ios:5949e383d9a4de20c20789',
=======
    appId: '1:856680776236:ios:fc5cb25533490fa1c20789',
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86
    messagingSenderId: '856680776236',
    projectId: 'e-commerce-622df',
    storageBucket: 'e-commerce-622df.appspot.com',
    androidClientId: '856680776236-6ul4g1um1tedj2dcq7mpngk9ksgh52n4.apps.googleusercontent.com',
    iosClientId: '856680776236-fm029qtn3ln6n48prspoupbfp87fa7q2.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce.RunnerTests',
  );
}
