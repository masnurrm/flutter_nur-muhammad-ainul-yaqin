import 'package:flutter/material.dart';
import '../View/ContactMain.dart';
import '../Models/ContactModel.dart';
import '../View/ContactTheme.dart';
import '../Controller/ContactController.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  late TextEditingController contactNameController;
  late TextEditingController contactNumberController;

  @override
  void initState() {
    contactNameController = TextEditingController();
    contactNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    contactNameController.clear();
    contactNameController.dispose();

    contactNumberController.clear();
    contactNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: ContactTheme.primaryTextColor,
          )),
        title: Text(
          "Create Contact",
          style: ContactTheme.primaryTextStyle.copyWith(
            fontWeight: ContactTheme.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ContactTheme.horizontalMargin,
          vertical: ContactTheme.verticalMargin,
        ),
        child: Column(
          children: [
            Material(
              shadowColor: ContactTheme.primaryColor.withOpacity(0.5),
              elevation: 5,
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: contactNameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelText: "Name",
                  focusColor: ContactTheme.secondaryTextColor,
                  hintStyle: ContactTheme.secondaryTextStyle.copyWith(fontSize: 10),
                  counterText: "",
                  suffixIconColor: ContactTheme.secondaryTextColor,
                  border: const UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(
                      color: Colors.white, style: BorderStyle.none)),
                  filled: true,
                  contentPadding: const EdgeInsets.all(13),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              shadowColor: ContactTheme.primaryColor.withOpacity(0.5),
              elevation: 5,
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: contactNumberController,
                keyboardType: TextInputType.number,
                maxLength: 13,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelText: "Phone Number",
                  focusColor: ContactTheme.secondaryTextColor,
                  hintStyle: ContactTheme.secondaryTextStyle.copyWith(fontSize: 10),
                  counterText: "",
                  suffixIconColor: ContactTheme.secondaryTextColor,
                  border: const UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(
                      color: Colors.white, style: BorderStyle.none)),
                  filled: true,
                  contentPadding: const EdgeInsets.all(13),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            (contactNameController.text.isEmpty ||  contactNumberController.text.isEmpty) ?
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    // primary: ContactTheme.secondaryTextColor,
                    padding: const EdgeInsets.all(10),
                    minimumSize: const Size(double.infinity, 40),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text(
                  "Add Contact",
                  style: ContactTheme.primaryTextStyle.copyWith(
                      fontWeight: ContactTheme.semiBold,
                      color: ContactTheme.backgroundColor,
                      fontSize: 16),
                ),
              ) :
              ElevatedButton(
                onPressed: () {
                  ContactModel newContact = ContactModel(
                    contactNameController.text,
                    contactNumberController.text);
                  ContactController.addContact(newContact);
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => ContactMain()),
                    (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  minimumSize: const Size(double.infinity, 40),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                child: Text(
                  "Add Contact",
                  style: ContactTheme.primaryTextStyle.copyWith(
                    fontWeight: ContactTheme.semiBold,
                    color: ContactTheme.backgroundColor,
                    fontSize: 16),
                ),
              )
          ],
        ),
      ),
    );
  }
}