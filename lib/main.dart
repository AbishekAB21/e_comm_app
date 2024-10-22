import 'package:e_comm_app/provider/cart_provider.dart';
import 'package:e_comm_app/screens/cart_screen.dart';
import 'package:e_comm_app/screens/detail_screen.dart';
import 'package:e_comm_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
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
      home: HomeScreen()
    );
  }
}

