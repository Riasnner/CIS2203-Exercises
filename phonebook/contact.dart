import 'name.dart';

class Contact extends Name{
  String phoneNumber;
  String address;

  Contact(String firstName, String lastName, this.address, this.phoneNumber) :super(firstName, lastName);
}