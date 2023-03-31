import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SignInFirebaseUser {
  SignInFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

SignInFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SignInFirebaseUser> signInFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SignInFirebaseUser>(
      (user) {
        currentUser = SignInFirebaseUser(user);
        return currentUser!;
      },
    );
