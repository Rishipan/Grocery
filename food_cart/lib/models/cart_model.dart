import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    // [itemName, itemPrice, color]

    ["Banana", "80", "assets/images/banana.png", Colors.yellow],
    ["Apple", "220", "assets/images/apples.png", Colors.red],
    ["Juice", "40", "assets/images/juice.png", Colors.green],
    ["Water", "20", "assets/images/bottel.png", Colors.blue],
  ];

  // list of cart items
  // ignore: prefer_final_fields
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add item from cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // remove all items
  void makeEmptyCart() {
    _cartItems.clear();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
