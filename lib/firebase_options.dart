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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHNOTeyL_-sJNQTR4D2rc57Eslq_DZdNs',
    appId: '1:188931211922:android:ad9442d734c75721155c4b',
    messagingSenderId: '188931211922',
    projectId: 'rent-a-car-app-2024',
    storageBucket: 'rent-a-car-app-2024.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoy0_TjKn-y7wlq-wuz1n58BQ8oBhb7t4',
    appId: '1:188931211922:ios:268eba89794f8044155c4b',
    messagingSenderId: '188931211922',
    projectId: 'rent-a-car-app-2024',
    storageBucket: 'rent-a-car-app-2024.appspot.com',
    iosBundleId: 'com.example.rentACarApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDoy0_TjKn-y7wlq-wuz1n58BQ8oBhb7t4',
    appId: '1:188931211922:ios:268eba89794f8044155c4b',
    messagingSenderId: '188931211922',
    projectId: 'rent-a-car-app-2024',
    storageBucket: 'rent-a-car-app-2024.appspot.com',
    iosBundleId: 'com.example.rentACarApp',
  );

}