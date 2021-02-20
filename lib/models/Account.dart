import 'package:flutter/material.dart';

class Account {
  Color color;
  double balance;
  double a1;
  double a2;
  double a3;
  double a4;
  Account(double mBalance, double mA1, double mA2, double mA3, double mA4,
      Color mColor)
      : balance = mBalance,
        a1 = mA1,
        a2 = mA2,
        a3 = mA3,
        a4 = mA4,
        color = mColor;
}
