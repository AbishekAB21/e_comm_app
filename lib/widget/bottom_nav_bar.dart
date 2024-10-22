import 'package:e_comm_app/provider/bottom_nav_provider.dart';
import 'package:e_comm_app/screens/cart_screen.dart';
import 'package:e_comm_app/screens/home_screen.dart';
import 'package:e_comm_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final pages = [
    HomeScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Consumer<BottomNavProvider>(
        builder: (context, bottomNavProvider, child) {
          return BottomNavigationBar(
              onTap: (value) => bottomNavProvider.setTabIndex(value),
              
              backgroundColor: appcolor.backgroundColor,
              currentIndex: bottomNavProvider.currentIndex,
              selectedItemColor: appcolor.buttonColor,
              unselectedItemColor: appcolor.unselectedColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded),
                  label: "",
                ),
              ]);
        },
      ),
      body: Consumer<BottomNavProvider>(
        builder: (context, bottomNavProvider, child) {
          return pages[bottomNavProvider.currentIndex];
        },
      ),
    );
  }
}
