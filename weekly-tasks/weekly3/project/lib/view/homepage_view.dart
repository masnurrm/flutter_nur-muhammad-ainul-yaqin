import 'package:flutter/material.dart';

import 'package:project/model/users_data.dart';

import 'widgets/parallax_widget.dart';
import 'widgets/main_drawer_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rateZero = 0.0;
  double rateOne = 0.0;
  double rateTwo = 0.0;
  double rateThree = 0.0;
  double rateFour = 0.0;
  double rateFive = 0.0;
  double rateSix = 0.0;
  double rateSeven = 0.0;
  double rateEight = 90.0;

  String? asset;
  double? top;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override

  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 0, 2),
      ),
      drawer: mainDrawer(),
        body: NotificationListener(
          onNotification: (v) {
            if (v is ScrollUpdateNotification) {
              setState(() {
                rateEight -= v.scrollDelta! / 1;
                rateSeven -= v.scrollDelta! / 1.5;
                rateSix -= v.scrollDelta! / 2;
                rateFive -= v.scrollDelta! / 2.5;
                rateFour -= v.scrollDelta! / 3;
                rateThree -= v.scrollDelta! / 3.5;
                rateTwo -= v.scrollDelta! / 4;
                rateOne -= v.scrollDelta! / 4.5;
                rateZero -= v.scrollDelta! / 5;
              });
            
          }
          return true;
        },
        child: Stack(
          children: <Widget> [
            ParallaxWidget(top: rateZero, asset: "parallax0"),
            ParallaxWidget(top: rateOne, asset: "parallax1"),
            ParallaxWidget(top: rateTwo, asset: "parallax2"),
            ParallaxWidget(top: rateThree, asset: "parallax3"),
            ParallaxWidget(top: rateFour, asset: "parallax4"),
            ParallaxWidget(top: rateFive, asset: "parallax5"),
            ParallaxWidget(top: rateSix, asset: "parallax6"),
            ParallaxWidget(top: rateSeven, asset: "parallax7"),
            ParallaxWidget(top: rateEight, asset: "parallax8"),

            ListView(
              children: <Widget> [
                Container(
                  height: 500,
                  color: Colors.transparent,
                ),
                Container(
                  color: const Color.fromARGB(255, 33, 0, 2),
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 70),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Halo!",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat-Regular",
                            letterSpacing: 1.8,
                            color: Color(0xFFFFAF00)
                          ),
                        ),
                        Text(
                          "Ada masalah?",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Montserrat-Regular",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.8,
                            color: Color(0xFFFFAF00)
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 190,
                          child: Divider(
                            height: 1,
                            color: Color(0xFFFFAF00)
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(height: 20),
                                              ],
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 33, 0, 2),
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLength: 60,
                              controller: firstNameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'First Name',
                                fillColor: Color.fromARGB(46, 255, 255, 255),
                                filled: false,
                                focusColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromARGB(100, 255, 174, 0), width: 2.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFFFAF00), width: 2.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFFFFAF00),
                                  fontSize: 15,
                                  fontFamily: "Montserrat-Regular",
                                  letterSpacing: 1.3,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: SizedBox(
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLength: 60,
                              controller: lastNameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Last Name',
                                fillColor: Color.fromARGB(46, 255, 255, 255),
                                filled: false,
                                focusColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromARGB(100, 255, 174, 0), width: 2.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFFFAF00), width: 2.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFFFFAF00),
                                  fontSize: 15,
                                  fontFamily: "Montserrat-Regular",
                                  letterSpacing: 1.3,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 33, 0, 2),
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                          width: 685,
                          child: TextFormField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            maxLength: 60,
                            controller: emailController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email Address',
                              fillColor: Color.fromARGB(46, 255, 255, 255),
                              filled: false,
                              focusColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(100, 255, 174, 0), width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFAF00), width: 2.0),
                              ),
                              labelStyle: TextStyle(
                                color: Color(0xFFFFAF00),
                                fontSize: 15,
                                fontFamily: "Montserrat-Regular",
                                letterSpacing: 1.3,
                              ),

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 685,
                          height: 100,
                          child: TextFormField(
                            maxLines: 5,
                            expands: false,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            controller: messageController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Message',
                              fillColor: Color.fromARGB(10, 255, 255, 255),
                              filled: false,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(100, 255, 174, 0), width: 2.0),
                              ),
                              focusColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFAF00), width: 2.0),
                              ),
                              labelStyle: TextStyle(
                                color: Color(0xFFFFAF00),
                                fontSize: 15,
                                fontFamily: "Montserrat-Regular",
                                letterSpacing: 1.3,
                              ),

                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                    ],
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 33, 0, 2),
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 40, right: 40, bottom: 100),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Center(child: Text("Konfirmasi Pengisian Masalah", style: TextStyle(fontWeight: FontWeight.bold),)),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text("Full Name: " + firstNameController.text + " " + lastNameController.text),
                                Text("Email: " + emailController.text),
                                Text("Message: " + messageController.text),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  String? name = firstNameController.text + " " + lastNameController.text;
                                  String? email = emailController.text;
                                  String? message = messageController.text;
                                  if (name != null && email != null && message != null) {
                                    items.add(UsersData(name: name, email: email, message: message));

                                    Navigator.pop(context);
                                  }
                                },
                                child: const Center(child: Text("Submit")),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                      primary: const Color(0xFFFFAF00),
                      onPrimary: const Color(0xFF210002),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat-Regular",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF210002),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
