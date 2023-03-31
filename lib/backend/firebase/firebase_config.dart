import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDukuGHt0NQ_wX_Mkf2V29x06USlk1Epsc",
            authDomain: "mydb-a4934.firebaseapp.com",
            projectId: "mydb-a4934",
            storageBucket: "mydb-a4934.appspot.com",
            messagingSenderId: "744329989740",
            appId: "1:744329989740:web:3b2328ee99b0db85461249"));
  } else {
    await Firebase.initializeApp();
  }
}
