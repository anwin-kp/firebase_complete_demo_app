// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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

  static FirebaseOptions android = FirebaseOptions(
    apiKey: dotenv.env['ANDROID_API_KEY']!,
    appId: '1:1044351844242:android:2d445541dc749af0490b4b',
    messagingSenderId: '1044351844242',
    projectId: 'fir-complete-demo-19b60',
    databaseURL:
        'https://fir-complete-demo-19b60-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fir-complete-demo-19b60.appspot.com',
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: dotenv.env['IOS_API_KEY']!,
    appId: '1:1044351844242:ios:34ab3da0f0968500490b4b',
    messagingSenderId: '1044351844242',
    projectId: 'fir-complete-demo-19b60',
    databaseURL:
        'https://fir-complete-demo-19b60-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fir-complete-demo-19b60.appspot.com',
    androidClientId:
        '1044351844242-g5quidbidp9vij3rb5rkjr1kklpkb0sm.apps.googleusercontent.com',
    iosClientId:
        '1044351844242-0cb1tca8d02kamlse7h7ijua7ui32ut3.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseCompleteDemoApp',
  );
}
