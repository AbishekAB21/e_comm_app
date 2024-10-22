import 'package:e_comm_app/provider/cart_provider.dart';
import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/utils/fontstyles.dart';
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
              SizedBox(height: 20),
              if (cartItems.isEmpty)
                const _BuildEmptyCartIndication()
              else
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final cartItem = cartItems[index];
                    return CartList(cartitems: cartItem, index: index,);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                )
            ],
          ),
        ),
      ),
      bottomNavigationBar: cartItems.isNotEmpty
          ? BottomAppBar(
              color: appcolor.backgroundColor,
              child: CartButton(
                ontap: () {
                 
                  Provider.of<CartProvider>(context, listen: false).emptyCart();
                },
              ),
            )
          : null,
    );
  }
}

class _BuildEmptyCartIndication extends StatelessWidget {
  const _BuildEmptyCartIndication({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Image.asset(
            "assets/empty-cart.png",
            height: 200,
            width: 200,
          ),
          const SizedBox(height: 20), // Add some space below the image
          Text(
            "Your cart is empty!",
            style: Fontstyles.ContentTextStyle3(context),
          ),
        ],
      ),
    );
  }
}
