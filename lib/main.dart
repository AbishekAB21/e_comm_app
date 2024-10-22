import 'package:e_comm_app/models/models.dart';
import 'package:e_comm_app/provider/bottom_nav_provider.dart';
import 'package:e_comm_app/provider/cart_provider.dart';
import 'package:e_comm_app/provider/home_screen_provider.dart';
import 'package:e_comm_app/screens/splash_screen.dart';
import 'package:e_comm_app/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      
    providers: [
      ChangeNotifierProvider(create: (context) => CartProvider(),),
      ChangeNotifierProvider(create: (context) => BottomNavProvider(),),
      ChangeNotifierProvider(create: (context) => HomeScreenProvider(productList),),
    ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen()
    );
  }
}

