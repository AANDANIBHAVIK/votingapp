import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/homeScreen.dart';
import 'package:loginapp/loginScreen.dart';
import 'package:loginapp/signupScreen.dart';
import 'package:loginapp/splaceScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => Splace_Screen(),
        '/login': (p0) => Login_Screen(),
        '/signup': (p0) => Signup_Screen(),
        '/home': (p0) => Home_Screen(),
      },
    ),
  );
}
