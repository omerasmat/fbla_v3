import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FblaV3FirebaseUser {
  FblaV3FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FblaV3FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FblaV3FirebaseUser> fblaV3FirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FblaV3FirebaseUser>((user) => currentUser = FblaV3FirebaseUser(user));
