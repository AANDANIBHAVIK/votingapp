import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/fb.dart';

class Splace_Screen extends StatefulWidget {
  const Splace_Screen({Key? key}) : super(key: key);

  @override
  State<Splace_Screen> createState() => _Splace_ScreenState();
}

class _Splace_ScreenState extends State<Splace_Screen> {
  bool msg = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    msg = checkUser();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 4),
      () => msg ? Get.offNamed('/home') : Get.offNamed('/login'),
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 750,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.teal, Colors.white],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "✅",
                  style: TextStyle(
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 80),
                ),
                SizedBox(
                  height: 10,
                ),

                Text(
                  "VOTING",
                  style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "APPLICATION",
                  style: TextStyle(
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
