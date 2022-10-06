import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/contact_bloc.dart';
import '../models/ContactModel.dart';

class ContactCreate extends StatefulWidget {
  const ContactCreate({super.key});

  static const String route = '/createContact';

  @override
  State<ContactCreate> createState() => _ContactCreateState();
}

class _ContactCreateState extends State<ContactCreate> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Contact'),
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name'
                    ),
                    validator: _validateName,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                      hintText: 'Enter your phone number with +62'
                    ),
                    validator: _validatePhone
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<ContactBloc, ContactState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          final isValid = _formKey.currentState!.validate();

                          if (!isValid) {
                            return;
                          }

                          final contact = ContactModel(
                            name: _nameController.text,
                            phone: _phoneController.text,
                          );

                          final duplicate = state.contacts 
                            .where((element) => element.phone == contact.phone)
                            .isNotEmpty;

                          if (duplicate) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Contact already exists'),
                              ),
                            );
                            return;
                          }

                          context 
                            .read<ContactBloc>()
                            .add(CreateContact(contact: contact));

                          return Navigator.pop(context);
                        },
                        child: const Text('Create'),
                      );
                    }
                  )
                ],
              )
            ),
          ),
        ),
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