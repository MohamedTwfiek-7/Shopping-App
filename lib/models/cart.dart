import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items}; //copy form the map (pointer)
  }

  int get itemsCount {
    return _items.length; //copy form the list (pointer)
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, cart) {
      total += cart.price * cart.quantity;
    });
    return total;
  }

  void addItem(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
              (oldValue) =>
              CartItem(
                id: oldValue.id,
                title: oldValue.title,
                price: oldValue.price,
                quantity: oldValue.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
        productId,
            () =>
            CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1,
            ),
      );
    }
    notifyListeners();
  }
}
