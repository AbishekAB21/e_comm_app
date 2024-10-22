// ignore_for_file: must_be_immutable

import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/utils/fontstyles.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  void Function()? ontap;
  AddButton({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appcolor.buttonColor,
        ),
        child: Text(
          "Add to Cart",
          style: Fontstyles.ButtonText1(context),
        ),
      ),
    );
  }
}
