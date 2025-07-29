// Create a simple address book using a map, where the keys are names and the values are phone numbers. Add, update, and remove entries
// based on user input.

import 'dart:io';

void main() {
  Map<String, int> addressBook = {};
  while(true) {
    print("\n---------------Address Book Menu---------------");
    print("1. Add entry");
    print("2. Update entry");
    print("3. Remove entry");
    print("4. View all entries");
    print("5. Exit");

    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync().toString());

    switch(choice) {
      case 1:
        print("Enter name: ");
        String name = stdin.readLineSync().toString();

        if(addressBook.containsKey(name)) {
          print("This name already exists.");
        } else {
          print("Enter phone number: ");
          int phone = int.parse(stdin.readLineSync().toString());
          addressBook[name] = phone;
          print("Entry added.");
        }
        break;

      case 2:
        print("Enter name to update: ");
        String name = stdin.readLineSync().toString();

        if(addressBook.containsKey(name)) {
          print("Enter new phone number: ");
          int phone = int.parse(stdin.readLineSync().toString());
          addressBook[name] = phone;
          print("Entry updated.");
        } else {
          print("Name not found.");
        }
        break;

      case 3:
        print("Enter name to remove: ");
        String name = stdin.readLineSync().toString();

        if(addressBook.containsKey(name)) {
          addressBook.remove(name);
          print("Entry removed.");
        } else {
          print("Name not found.");
        }
        break;

      case 4:
        if(addressBook.isEmpty) {
          print("Address book is empty.");
        } else {
          print("---------------Address Book Entries---------------");
          addressBook.forEach((name, phone) {
            print("$name: $phone");
          });
        }
        break;

      case 5:
        print("Exited.");
        return;

      default:
        print("Invalid choice. Please try again.");
    }
  }
}