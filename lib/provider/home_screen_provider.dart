import 'package:flutter/material.dart';
import 'package:e_comm_app/models/models.dart';

class HomeScreenProvider with ChangeNotifier {
  List<Products> _allProducts = [];
  List<Products> _filteredProducts = [];

  HomeScreenProvider(List<Products> products) {
    _allProducts = products;
    _filteredProducts = products;
  }

  List<Products> get filteredProducts => _filteredProducts;

  void searchProducts(String query) {
    if (query.isEmpty) {
      _filteredProducts = _allProducts;
    } else {
      _filteredProducts = _allProducts
          .where((products) =>
              products.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
