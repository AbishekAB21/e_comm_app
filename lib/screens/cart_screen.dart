import 'package:e_comm_app/provider/cart_provider.dart';
import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/widget/cart_button.dart';
import 'package:e_comm_app/widget/cart_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = Provider.of<CartProvider>(context).cartItems;
    return Scaffold(
      backgroundColor: appcolor.backgroundColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final cartItem = cartItems[index];
                  return CartList(cartitems: cartItem,);
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
      bottomNavigationBar:
          BottomAppBar(color: appcolor.backgroundColor, child: CartButton()),
    );
  }
}
