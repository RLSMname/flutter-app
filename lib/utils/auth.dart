import 'package:firebase_auth/firebase_auth.dart';


class Auth{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password
      ) async {
      final user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      return user;
  }

  Future<void> signInWithEmailAndPassword(
      String email, String password
      ) async {
    final user = await _auth.signInWithEmailAndPassword(email: email, password: password);

  }
}
