import 'package:firebase_auth/firebase_auth.dart';

abstract class Auth {
  Future<void> sinUpWithEmailAndPassword(
      {required String email, required String password});
}

class AuthImple implements Auth {
  @override
  Future<void> sinUpWithEmailAndPassword(
      {required String email, required String password}) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
     
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
            throw Exception('The password provided is too weak.');
    
      } else if (e.code == 'email-already-in-use') {
  
          throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
