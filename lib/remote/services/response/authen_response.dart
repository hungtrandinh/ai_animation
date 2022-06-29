import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ui_animation/data/user.dart';

class AuthResponse {
  final FirebaseAuth _firebaseAuth;
  static FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  static Reference storage = FirebaseStorage.instance.ref();

  AuthResponse({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  static Future<void> createNewUser(MyUser user) async =>
      await firebaseFirestore
          .collection("users")
          .doc(user.id)
          .set(user.toDocument())
          .then((value) => null, onError: (e) => e);

  Future<void> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
    } catch (_) {}
  }
}
