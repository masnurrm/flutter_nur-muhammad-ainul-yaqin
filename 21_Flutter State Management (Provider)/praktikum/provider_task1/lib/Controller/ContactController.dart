import '../Models/ContactModel.dart';

class ContactController {
  static List<ContactModel> contactList = [];

  static void addContact(ContactModel contact) {
    contactList.insert(0, contact);
  }

  static void deleteContact(ContactModel contact) {
    contactList.remove(contact);
  }
}