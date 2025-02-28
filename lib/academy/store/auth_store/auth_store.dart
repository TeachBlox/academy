import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store, ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @observable
  User? user;

  _AuthStore() {
    _auth.authStateChanges().listen((User? newUser) {
      user = newUser;
      notifyListeners();
    });
  }

  @computed
  bool get isLoggedIn => user != null;

  @action
  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      debugPrint("SignIn error: $e");
    }
  }

  @action
  Future<void> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      debugPrint("SignUp error: $e");
    }
  }

  @action
  Future<void> signOut() async {
    await _auth.signOut();
  }
}

final authStore = AuthStore();
