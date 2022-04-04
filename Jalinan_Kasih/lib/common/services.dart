import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

//register admin
  static Future<User?> signUp(
      String username, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User? firebaseUser = result.user;

      await FirebaseChatCore.instance.createUserInFirestore(
        types.User(
          firstName: username,
          id: result.user!.uid,
          role: types.Role.admin,
        ),
      );

      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//login anonimous user
  static Future<User?> anonymousSign() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? firebaseUser = result.user;

      await FirebaseChatCore.instance.createUserInFirestore(
        types.User(
          firstName: "user",
          id: result.user!.uid,
          role: types.Role.user,
        ),
      );
      return firebaseUser;
    } catch (e) {
      print(
        e.toString(),
      );

      return null;
    }
  }

//login dengan menggubakan email dan password
  static Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//function sign out
  static Future<User?> signOut() async {
    await _auth.signOut();
  }

  static Stream<User?> get FirebaseUserStream => _auth.authStateChanges();
}
