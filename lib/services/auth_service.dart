import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth;

  AuthService(this.firebaseAuth);

  Stream<User> get authStateChanges => firebaseAuth.idTokenChanges();

  Future<void> signIn ({String email, String pass}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(email: email, password: pass);
      return 'Sign In';
    } on FirebaseAuthException catch (e){
      return e.message;
    }
  }

  Future<void> signUp ({String email, String pass}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(email: email, password: pass);
      return 'Sign Up';
    } on FirebaseAuthException catch (e){
      return e.message;
    }
  }

  Future<void> signOut () async {
    await firebaseAuth.signOut();
  }
}