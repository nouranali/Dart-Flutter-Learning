import 'dart:io';

import 'assignment.dart';

void main() {
//true deposit
  //flase withdraw
  //amount global
  int accnum;
  double bal;
  String name;
  double amount, amd, amw;
  String last = "";
  bool b = false;
  while (true) {
    print("""-	Press 1 to enter account details
-	Press 2 to deposit
-	Press 3 to withdraw
-	Press 4 to show current balance
-	Press 5 to cancel last transaction
-	Press 6 to exit""");
    int choice = int.parse(stdin.readLineSync());

    switch (choice) {
      case 1:
        if (b == false) {
          print("Ener acc num , balance, ur name");
          var obj = new Account();
          accnum = int.parse(stdin.readLineSync());
          bal = double.parse(stdin.readLineSync());
          name = stdin.readLineSync();
          obj.accnum = accnum;
          obj.bal = bal;
          obj.name = name;
          print("$accnum $bal $name");
        }
        break;
      label:
      case 2:
        var depo = new deposit();
        print("enter money to deposite");
        amount = double.parse(stdin.readLineSync());
        depo.amount = amount;
        amd = amount;
        bal = depo.execute(bal);
        print(bal);
        last = 'd';
        break;
      case 3:
        var withd = new withdraw();
        print("enter money to withdraw");
        amount = double.parse(stdin.readLineSync());
        withd.amount = amount;
        amw = amount;
        bal = withd.execute(bal);
        print(bal);
        last = 'w';
        break;
      case 4:
        print('Enter currency U or E');
        var curr = new balanceinquiry();
        String cur = "";
        print("Balance = ${curr.execute(bal)} ${curr.currty(cur)}");
        break;

      case 5:
        if (last == 'd') {
          bal -= amd;
        } else if (last == 'w') {
          bal += amw;
        }
        print(bal);
        break;
      case 6:
        exit(0);
        break;
      default:
        print("enter valid data");
    }
  }
}
