import 'package:firebase_auth/firebase_auth.dart';
import 'package:furniture_app/core/DI/dependency_injection.dart';
import 'package:furniture_app/core/services/firestore_services.dart';
import 'package:furniture_app/core/utils/api_endpoints.dart';
import 'package:furniture_app/features/register/data/models/signUp_model.dart';

abstract class Auth {
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  });
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password});
}

class AuthImple implements Auth {
  final FirebaseAuth firebaseAuth = getIt<FirebaseAuth>();
  FirestoreService firestoreService = FirestoreService.instance;
  @override
  Future<void> signUpWithEmailAndPassword({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      SignupModel signupModel = SignupModel(
          email: email,
          uid: user.user!.uid,
          firstName: firstName,
          lastName: lastName);
      firestoreService.setData(
          path: ApiEndpoints.addUser(uid: user.user!.uid),
          data: signupModel.toMap());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
       throw Exception(e);
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided.');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
