import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icharm_web/icharm_web.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAsL7B_9v8jJm_ScCuZWDf1tOtFMrZiMyk",
      appId: "1:98606357414:web:0601cd01f63583798c0d67",
      messagingSenderId: "98606357414",
      projectId: "tenet-life",
    ),
  );
  runApp(const ICharmWeb());
}
