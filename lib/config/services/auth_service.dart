import 'package:firebase_auth/firebase_auth.dart';
<<<<<<< HEAD
=======
import 'package:flutter/material.dart';
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
<<<<<<< HEAD
=======
  bool isSigned = FirebaseAuth.instance.currentUser != null;

  Future<void> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }

  Future<void> signInHandlerEmail(String email, String password) async {
     try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86

  Future<void> signInHandler() async {
    try {
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        GoogleSignInAuthentication? googleAuth =
            await googleUser.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await _auth.signInWithCredential(credential);
      }
    } catch (e) {
<<<<<<< HEAD
      e.toString();
    }
  }
=======
      print(e.toString());
    }
  }

  Future<void> logout() async {
    if (isSigned) {
      await FirebaseAuth.instance.signOut();
      await _googleSignIn.signOut();
    }
  }

  String? getEmail() {
    return FirebaseAuth.instance.currentUser!.email;
  }

  String? getUsername() {
    return FirebaseAuth.instance.currentUser!.displayName;
  }

  Widget isSignedIn(Widget widgetTrue, Widget widgetFalse) {
    if (isSigned) {
      return widgetTrue;
    }
    return widgetFalse;
  }
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86
}
