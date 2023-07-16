import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAKt3YYREnkQz1VOIDLBp4lPADhBxECJ7E",
            authDomain: "conecta-2f7b4.firebaseapp.com",
            projectId: "conecta-2f7b4",
            storageBucket: "conecta-2f7b4.appspot.com",
            messagingSenderId: "587613757437",
            appId: "1:587613757437:web:895038d31cb267af6d8394",
            measurementId: "G-1R0N2GSZG1"));
  } else {
    await Firebase.initializeApp();
  }
}
