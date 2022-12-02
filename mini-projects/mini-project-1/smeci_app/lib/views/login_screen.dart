import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Image.asset(
          'assets/background.png',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SizedBox(height: 50,),
                  Column(
                    children: [
                      Container(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/logo-typeface.png', 
                        width: MediaQuery.of(context).size.width / 1.5,
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'Masuk',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: TextFormField(
                          validator: _validateName,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            fillColor: Color.fromARGB(46, 255, 255, 255),
                            focusColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF6E6E6E), width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF6E6E6E), width: 2.0),
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontSize: 15,
                              letterSpacing: 1.3,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: TextFormField(
                          validator: _validateName,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Kata Sandi',
                            fillColor: Color.fromARGB(46, 255, 255, 255),
                            focusColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF6E6E6E), width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF6E6E6E), width: 2.0),
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontSize: 15,
                              letterSpacing: 1.3,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF163760),
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        }, 
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ),
                      const SizedBox(height: 20,),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign_up_user');
                              },
                              child: const Text(
                                'Belum punya akun? Daftar',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF6E6E6E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 60,),
                    ],
                  )
                ],
              ),
            )
          )
        ),
      ],
    );
  }
  String? _validateName(String? value) {
    if(value!.isEmpty){
      return '*Required Field';
    } 
    else if(value.length < 3){
      return 'Name is too short';
    } 
    else {
      return null;
    }
  }

  String? _validatePhone(String? value) {
    if(isMobileNumberValid(value!)){
      return '*Required Field';
    } 
    else if(value.length < 11){
      return 'Phone must be at least 11 digits';
    } 
    else if (value.length > 15) {
      return 'Phone must not be greater than 15 digits';
    }
    else {
      return null;
    }
  }

  bool isMobileNumberValid(String phoneNumber) {
    String regexPattern = r'^(?:[1-9])?[0-9]{11,15}$';
    var regExp = RegExp(regexPattern);

    if (phoneNumber.isEmpty) {
      return false;
    } 
    else if (regExp.hasMatch(phoneNumber)) {
      return true;
    }
    return false;
  }
}