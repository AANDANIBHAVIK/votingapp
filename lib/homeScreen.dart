import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/fb.dart';
import 'package:loginapp/homeController.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  HomeCntroller homeCntroller = Get.put(HomeCntroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            elevation: 0,
            title: Text("Vote For Party"),
            actions: [IconButton(onPressed: (){
              logout();
              Get.offNamed('/login');
            }, icon: Icon(Icons.logout))],
          ),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "BJP",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("${homeCntroller.i}"),
                        SizedBox(width: 10,),
                        IconButton(
                          onPressed: () {
                            insertdata("1", "BJP");
                            Get.snackbar("Success", "Voting");
                            homeCntroller.i++;
                          },
                          icon: Icon(Icons.how_to_vote_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "CON",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("0"),
                        SizedBox(width: 10,),
                        IconButton(
                          onPressed: () {
                            insertdata("2", "CON");
                            Get.snackbar("Success", "Voting");
                          },
                          icon: Icon(Icons.how_to_vote_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "AAP",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("0"),
                        SizedBox(width: 10,),
                        IconButton(
                          onPressed: () {
                            insertdata("3", "AAP");
                            Get.snackbar("Success", "Voting");
                          },
                          icon: Icon(Icons.how_to_vote_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "SS",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("0"),
                        SizedBox(width: 10,),
                        IconButton(
                          onPressed: () {
                            insertdata("4", "SS");
                            Get.snackbar("Success", "Voting");
                          },
                          icon: Icon(Icons.how_to_vote_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "BSP",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("0"),
                        SizedBox(width: 10,),
                        IconButton(
                          onPressed: () {
                            insertdata("5", "BSP");
                            Get.snackbar("Success", "Voting");
                          },
                          icon: Icon(Icons.how_to_vote_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )

          // ElevatedButton(
          //   onPressed: (){
          //     logout();
          //     Get.offNamed('/login');
          //   },child: Text("LOGOUT"),
          // ),
          ),
    );
  }
}
