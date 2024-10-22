import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/utils/fontstyles.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
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
                              "assets/1.jpg",
                              fit: BoxFit.contain,
                              height: 110,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text(
                                "Iphone 16 Pro Max",
                                style: Fontstyles.HeadlineStyle1(context),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "₹120,000",
                                style: Fontstyles.HeadlineStyle2(context),
                              ),
                            ],
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
                                Text("1", style: Fontstyles.SmallStyle(context),),
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
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
