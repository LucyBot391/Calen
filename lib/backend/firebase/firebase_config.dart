import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCuAxmX8UbPI3NeJDHA8yHVZdk8GWy5kmU",
            authDomain: "calen-13ad3e.firebaseapp.com",
            projectId: "calen-13ad3e",
            storageBucket: "calen-13ad3e.firebasestorage.app",
            messagingSenderId: "869575665721",
            appId: "1:869575665721:web:e70c1ec7a533400d9345e8",
            measurementId: "G-W6RCZ4KH1K"));
  } else {
    await Firebase.initializeApp();
  }
}
