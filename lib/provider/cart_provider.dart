import 'package:e_comm_app/models/cart_model.dart';
import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/widget/reusable_snackbar.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Cart> _cartItems = [];

  void addToCart(
      String name, String price, String imagePath, BuildContext context) {
    final existingProductIndex =
        _cartItems.indexWhere((item) => item.name == name);

    if (existingProductIndex >= 0) {
      _cartItems[existingProductIndex].quantity =
          (int.parse(_cartItems[existingProductIndex].quantity) + 1).toString();
      ReusableSnackBar().showSnackbar(
          context,
          "Increased quantity by ${existingProductIndex + 1}",
          appcolor.successColor);
    } else {
      _cartItems.add(
          Cart(name: name, price: price, imagePath: imagePath, quantity: '1'));

      ReusableSnackBar().showSnackbar(
          context, "Added product to cart", appcolor.successColor);
    }

    notifyListeners();
  }

  List<Cart> get cartItems => _cartItems;

  void increaseQuantity(int index) {
    _cartItems[index].quantity =
        (int.parse(_cartItems[index].quantity) + 1).toString();
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    if (_cartItems[index].quantity == "1") {
      _cartItems.removeAt(index);
      notifyListeners();
    } else {
      _cartItems[index].quantity =
          (int.parse(_cartItems[index].quantity) - 1).toString();
      notifyListeners();
    }
  }

  void emptyCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
