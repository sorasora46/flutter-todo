import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_todo/firebase_options.dart';
import 'package:flutter_todo/services/auth_service.dart';
import 'app.dart';

Future<void> main() async {
  FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  AuthService(auth: FirebaseAuth.instanceFor(app: app));
  runApp(const App());
}
