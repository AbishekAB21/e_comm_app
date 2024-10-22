
import 'package:flutter/material.dart';

AppColor appcolor = AppDefaultColor ();

abstract class AppColor{

  final Color primaryColor;
  final Color secondaryColor;
  final Color teritiaryColor;
  final Color backgroundColor;
  final Color buttonColor;
  final Color successColor;
  final Color errorColor;

  AppColor({
    required this.primaryColor,
    required this.secondaryColor,
    required this.teritiaryColor,
    required this.backgroundColor,
    required this.buttonColor,
    required this.successColor,
    required this.errorColor,

    });
}

class AppDefaultColor extends AppColor{
  AppDefaultColor() :super(

    primaryColor: Colors.white ,
    secondaryColor: Colors.grey,
    teritiaryColor: Colors.grey.shade300,
    backgroundColor: Colors.grey.shade200,
    buttonColor: Colors.black,
    successColor: Colors.green,
    errorColor: Colors.red,
  );
}