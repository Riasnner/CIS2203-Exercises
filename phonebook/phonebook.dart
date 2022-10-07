import 'contact.dart';

class Phonebook{
  List <Contact> _contact;

  Phonebook(this._contact);

  void displayContacts(){
    for(var x in _contact){
      print("-----------------------");
      print("Name: ${x.firstName} ${x.lastName}");
      print("Phone Number: ${x.phoneNumber}");
      print("Address: ${x.address}");
    }
  }

  void deleteContact(List<Contact> contact, String number){
    contact.removeWhere((x) => x.phoneNumber == number);
  }

  Contact? _search(String number){
    Contact? result = _contact.firstWhere((x) => x.phoneNumber == number, orElse: () => Contact("null", "null", "null", "null"));
    return result;
  }

  void searchContact(String number){
    Contact? contact = _search(number);
    if(contact != null){
      print("-----------------------");
      print("Name: ${contact.firstName} ${contact.lastName}");
      print("Phone Number: ${contact.phoneNumber}");
      print("Address: ${contact.address}");
    }
  }
}