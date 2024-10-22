import 'package:e_comm_app/models/models.dart';
import 'package:e_comm_app/provider/home_screen_provider.dart';
import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/widget/product_list_builder.dart';
import 'package:e_comm_app/widget/search_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the HomeScreenProvider
    final provider = Provider.of<HomeScreenProvider>(context);
    
    return Scaffold(
      backgroundColor: appcolor.backgroundColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              Center(
                child: Image.asset("assets/logo.png", height: 50, width: 60),
              ),
              SizedBox(height: 20),
              SearchBox(
                onChanged: (value) {
                  provider.searchProducts(value); // Calling search method
                },
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.7,
                  mainAxisExtent: 250,
                ),
                itemCount: provider.filteredProducts.length, // Use filtered products
                itemBuilder: (context, index) {
                  final product = provider.filteredProducts[index];
                  return ProductList(product: product);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
