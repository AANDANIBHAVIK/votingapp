import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> signup(String e1, String p1) async {
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // firebaseAuth.createUserWithEmailAndPassword(email: e1, password: p1);

  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: e1,
      password: p1,
    );
    return "Success";
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
      return "The password provided is too weak.";
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
      return 'The account already exists for that email.';
    }
  }
  return "Fail";
}

Future<String> loginemailpass(String email, String password) async {
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // firebaseAuth.createUserWithEmailAndPassword(email: e1, password: p1);

  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return "Success";
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
      return "No user found for that email.";
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
      return "Wrong password provided for that user.";
    }
  }
  return "Fail";
}

bool checkUser() {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    return true;
  }
  return false;
}

void logout() async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  firebaseAuth.signOut();
}

void insertdata(String id, String vote) {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  CollectionReference collectionReference =
      firebaseFirestore.collection("Vote");
  collectionReference
      .add({"Id": "$id", "Vote": "$vote"})
      .then((value) => print("success"))
      .catchError((error) => print("Error $error"));
  ;
}
