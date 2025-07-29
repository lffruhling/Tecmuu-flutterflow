import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAPXTtFQfUoXjm38JeUHJNuNtmhPmrFMcc",
            authDomain: "tecmuu-playground-w166t1.firebaseapp.com",
            projectId: "tecmuu-playground-w166t1",
            storageBucket: "tecmuu-playground-w166t1.firebasestorage.app",
            messagingSenderId: "488684281360",
            appId: "1:488684281360:web:c0824e37b6ec1aeb47b495"));
  } else {
    await Firebase.initializeApp();
  }
}
