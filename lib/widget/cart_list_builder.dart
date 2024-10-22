import 'package:e_comm_app/models/cart_model.dart';
import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/utils/fontstyles.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  Cart cartitems;
  CartList({super.key, required this.cartitems});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: appcolor.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
                cartitems.imagePath,
                fit: BoxFit.contain,
                height: 110,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   cartitems.name,
                    style: Fontstyles.HeadlineStyle1(context),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    cartitems.price,
                    style: Fontstyles.HeadlineStyle2(context),
                    
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_rounded,
                        color: appcolor.buttonColor,
                        size: 15,
                      )),
                  Text(
                    cartitems.quantity,
                    style: Fontstyles.SmallStyle(context),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove,
                        color: appcolor.buttonColor,
                        size: 15,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
