
import 'package:e_comm_app/utils/fontstyles.dart';
import 'package:flutter/material.dart';

class ReusableSnackBar {

  showSnackbar(
    BuildContext context,
    String message,
    Color backgroundColor,
    ){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            message,
            style: Fontstyles.ButtonText1(context)
          ),
          backgroundColor: backgroundColor,
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ));
  }
}

class FontStyles {
}