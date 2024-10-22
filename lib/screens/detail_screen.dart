import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/utils/fontstyles.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String desc;
  final String price;
  final String imagePath;
  const DetailScreen(
      {super.key,
      required this.name,
      required this.desc,
      required this.price,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  height: 500,
                  width: 500,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  name,
                  style: Fontstyles.HeadlineStyle1(context),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  desc,
                  style: Fontstyles.ContentTextStyle2(context),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: appcolor.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              price,
              style: Fontstyles.HeadlineStyle2(context),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: appcolor.buttonColor,
              ),
              child: Text(
                "Add to Cart",
                style: Fontstyles.ButtonText1(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
