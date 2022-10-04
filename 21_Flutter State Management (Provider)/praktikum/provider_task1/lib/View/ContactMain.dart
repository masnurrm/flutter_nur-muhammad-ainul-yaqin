import 'package:flutter/material.dart';
import '../View/CreateContact.dart';
import '../View/ContactTheme.dart';
import '../Controller/ContactController.dart';
import '../View/ContactCard.dart';


class ContactMain extends StatefulWidget {
  const ContactMain({Key? key}) : super(key: key);

  @override
  State<ContactMain> createState() => _ContactMainState();
}

class _ContactMainState extends State<ContactMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContactTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Icon(
          Icons.people_alt,
          size: 35,
          color: ContactTheme.primaryTextColor,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const CreateContact()));
            },
            child: Container(
              margin: EdgeInsets.only(
                right: ContactTheme.verticalMargin,
              ),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ContactTheme.primaryColor,
              ),
              child: const Icon(Icons.add),
            ),
          )
        ],
        title: Text(
          "Contacts",
          style: ContactTheme.primaryTextStyle.copyWith(
            fontWeight: ContactTheme.bold,
          ),
        ),
      ),
      body: (ContactController.contactList.isEmpty) ?
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contact Is Empty",
              style: ContactTheme.primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: ContactTheme.semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CreateContact()));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: ContactTheme.primaryColor),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Add New Contact +",
                  style: ContactTheme.primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: ContactTheme.bold,
                      color: ContactTheme.primaryColor),
                ),
              ),
            ),
          ],
        ),
      ) :
      ListView(
        padding: EdgeInsets.symmetric(
          horizontal: ContactTheme.horizontalMargin,
          vertical: ContactTheme.verticalMargin,
        ),
        children: ContactController.contactList.map((contact) {
          return ContactCard(
            contactName: contact.contactName!,
            contactNumber: contact.contactNumber!,
            onDelete: () {
              ContactController.deleteContact(contact);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const ContactMain()),
                (route) => false);
            });
        }).toList(),
      ),
    );
  }
}