import 'package:flutter/material.dart';

class NewContactScreen extends StatefulWidget {
  const NewContactScreen({super.key, required String parameter});

  @override
  State<NewContactScreen> createState() => _NewContactScreenState();
}

class _NewContactScreenState extends State<NewContactScreen> {
  late final String parameter;
  final _formKey = GlobalKey<FormState>();

  String? validatePhone(String value) {
    if (value.isEmpty) {
      return "* Required";
    } 
    else if (value.length < 11) {
      return "Password should be atleast 11 characters";
    } 
    else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create New Contact'),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            child: ListView(
              children: <Widget> [
                TextFormField(
                  validator: _validateName,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name'
                  ),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  validator: _validatePhone,
                  decoration: const InputDecoration(
                    labelText: 'Phone',
                    hintText: 'Enter your phone number'
                  ),
                ),
                const SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      // color: Colors.blue,
                      child: const Text(
                        'Submit', 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Contact Saved'),
                                content: const Text('Your contact has been saved successfully'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(
                                        context,
                                        // MaterialPageRoute(
                                        //   builder: (context) => const ContactScreen(),
                                        // ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                )
              ]
            ),
          ),
        )
      ),
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