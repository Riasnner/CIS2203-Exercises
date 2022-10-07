import 'phonebook/contact.dart';
import 'phonebook/phonebook.dart';

void main(){
  List <Contact> contacts = <Contact>[];
  contacts.add(Contact("John", "Doe", "United States", "09123456789"));
  contacts.add(Contact("Mary", "Sue", "Canada", "09283920018"));
  contacts.add(Contact("Raymond", "Mitch", "Germany", "09123984719"));
  contacts.add(Contact("Susan", "Kominski", "Zimbabwe", "02381947721"));
  contacts.add(Contact("Henry", "Ford", "South Korea", "04772984714"));

  Phonebook phonebook = Phonebook(contacts);
  print("Contact List");
  phonebook.displayContacts();
  contacts.add(Contact("Juan", "dela Cruz", "Manila, Philippines", "12345678900"));
  print("\nContact List(Added Contact)");
  phonebook.displayContacts();
  phonebook.deleteContact(contacts, "09283920018");
  print("\nContact List(Deleted Contact)");
  phonebook.displayContacts();
  print("\nContact List(Search Contact)");
  phonebook.searchContact("12345678900");
}