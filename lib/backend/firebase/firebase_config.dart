import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAD8kWislh8xEiopfRlr8hJI5-S3969DPc",
            authDomain: "mill-1c6cc.firebaseapp.com",
            projectId: "mill-1c6cc",
            storageBucket: "mill-1c6cc.appspot.com",
            messagingSenderId: "1037088909477",
            appId: "1:1037088909477:web:0f2402a1c98ed1143b854c",
            measurementId: "G-7C3N1F3B5J"));
  } else {
    await Firebase.initializeApp();
  }
}
