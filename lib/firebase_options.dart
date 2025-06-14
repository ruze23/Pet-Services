// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
  static final FirebaseOptions web = FirebaseOptions(
    apiKey: dotenv.get('API_KEY44', fallback: ""),
    appId: '1:928380693240:web:b995a0afa160ab65eea90d',
    messagingSenderId: '928380693240',
    projectId: 'petservices-93402',
    authDomain: 'petservices-93402.firebaseapp.com',
    storageBucket: 'petservices-93402.firebasestorage.app',
    measurementId: 'G-N8KSV3D8C6',
  );

  static final FirebaseOptions android = FirebaseOptions(
    apiKey: dotenv.get('API_KEY54', fallback: ""),
    appId: '1:928380693240:android:5ac4ec2ced19f856eea90d',
    messagingSenderId: '928380693240',
    projectId: 'petservices-93402',
    storageBucket: 'petservices-93402.firebasestorage.app',
  );

  static final FirebaseOptions ios = FirebaseOptions(
    apiKey: dotenv.get('API_KEY62', fallback: ""),
    appId: '1:928380693240:ios:76784e7ec50f6139eea90d',
    messagingSenderId: '928380693240',
    projectId: 'petservices-93402',
    storageBucket: 'petservices-93402.firebasestorage.app',
    iosBundleId: 'com.example.petServices',
  );

  static final FirebaseOptions macos = FirebaseOptions(
    apiKey: dotenv.get('API_KEY72', fallback: ""),
    appId: '1:928380693240:ios:76784e7ec50f6139eea90d',
    messagingSenderId: '928380693240',
    projectId: 'petservices-93402',
    storageBucket: 'petservices-93402.firebasestorage.app',
    iosBundleId: 'com.example.petServices',
  );

  static final FirebaseOptions windows = FirebaseOptions(
    apiKey: dotenv.get('API_KEY80', fallback: ""),
    appId: '1:928380693240:web:50926ed80ac591f8eea90d',
    messagingSenderId: '928380693240',
    projectId: 'petservices-93402',
    authDomain: 'petservices-93402.firebaseapp.com',
    storageBucket: 'petservices-93402.firebasestorage.app',
    measurementId: 'G-3NM4X995PS',
  );

}