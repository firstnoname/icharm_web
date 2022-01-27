import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icharm_web/icharm_web.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAJ-YO7LPcCvHA6Xkk2v7_MqdeXjyuID98",
      projectId: "icharm-566eb",
      messagingSenderId: "1084498170814",
      appId: "1:1084498170814:web:16a60bd893d51c13829fef",
      measurementId: "G-VK0ZHCQGTS",
    ),
  );
  runApp(const ICharmWeb());
}
