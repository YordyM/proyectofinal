
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
    apiKey: 'AIzaSyD514my15hkesQJP7BeNROKhn1tTegiUs4',
    appId: '1:630382071360:web:bac969961f648e925199a5',
    messagingSenderId: '630382071360',
    projectId: 'cursos-master-4ee92',
    authDomain: 'cursos-master-4ee92.firebaseapp.com',
    storageBucket: 'cursos-master-4ee92.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqncS2ygv9MZGDXSNEeiWMWv10lhWDun8',
    appId: '1:630382071360:android:86d0bfecda4e70bd5199a5',
    messagingSenderId: '630382071360',
    projectId: 'cursos-master-4ee92',
    storageBucket: 'cursos-master-4ee92.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBRnhpitY8DFod9kO6XpF1EO0ceb5ORJB8',
    appId: '1:630382071360:ios:bbcedded029b63395199a5',
    messagingSenderId: '630382071360',
    projectId: 'cursos-master-4ee92',
    storageBucket: 'cursos-master-4ee92.appspot.com',
    iosBundleId: 'com.rolomuz.cursosmaster',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBRnhpitY8DFod9kO6XpF1EO0ceb5ORJB8',
    appId: '1:630382071360:ios:bb7747ff63c218785199a5',
    messagingSenderId: '630382071360',
    projectId: 'cursos-master-4ee92',
    storageBucket: 'cursos-master-4ee92.appspot.com',
    iosBundleId: 'com.rolomuz.cursosmaster.RunnerTests',
  );
}
