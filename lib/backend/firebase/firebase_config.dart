import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC95d-wSELjz6dH9ZEdxy0t-Etk-kf0WHo",
            authDomain: "extremaflutter.firebaseapp.com",
            projectId: "extremaflutter",
            storageBucket: "extremaflutter.firebasestorage.app",
            messagingSenderId: "536669714088",
            appId: "1:536669714088:web:f1ba68f60b9a149d1ff49d"));
  } else {
    await Firebase.initializeApp();
  }
}
