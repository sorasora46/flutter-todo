import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  const AuthService({required this.auth});

  final FirebaseAuth auth;

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
