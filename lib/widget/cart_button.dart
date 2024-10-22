import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/utils/fontstyles.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: appcolor.buttonColor,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            "Checkout",
            style: Fontstyles.ButtonTextLarge(context),
          )),
        );
  }
}