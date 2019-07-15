import 'dart:io';

class Account {
  int accnum;
  double bal;
  String name;
}

abstract class Transaction {
  int transid;
  double execute(double bal) {
    return bal;
  }
}

class balanceinquiry extends Transaction {
  @override
  double execute(double bal) {
    return bal;
  }

  String currty(String currencyty) {
    currencyty = stdin.readLineSync();
    switch (currencyty) {
      case 'U':
        return currencyty;
        break;
      case 'E':
        return currencyty;
        break;
    }
  }
}

class withdraw extends Transaction {
  double amount;
  @override
  double execute(double bal) {
    bal = bal - amount;
    return bal;
  }
}

class deposit extends Transaction {
  double amount;
  @override
  double execute(double bal) {
    bal = bal + amount;
    return bal;
  }
}

class rollback implements Transaction {
  @override
  int transid;

  @override
  double execute(double bal) {
    // TODO: implement execute
    return null;
  }

  double cancel(double bal) {}
}
