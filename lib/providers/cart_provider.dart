import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/product.dart';

/// CartProvider manages the shopping cart state using ChangeNotifier.
/// It allows adding/removing products and tracks the cart item count.
class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = [];

  /// Returns an unmodifiable list of items currently in the cart.
  List<Product> get cartItems => List.unmodifiable(_cartItems);

  /// Returns the total number of items in the cart.
  int get cartItemCount => _cartItems.length;

  /// Returns the total price of all items in the cart.
  double get totalPrice =>
      _cartItems.fold(0.0, (sum, item) => sum + item.price);

  /// Checks if a product is already in the cart.
  bool isInCart(String productId) {
    return _cartItems.any((item) => item.id == productId);
  }

  /// Adds a product to the cart and updates the mock data state.
  void addToCart(Product product) {
    if (!isInCart(product.id)) {
      _cartItems.add(product);
      // Update the mock data product state
      final index =
          MockData.products.indexWhere((p) => p.id == product.id);
      if (index != -1) {
        MockData.products[index] = MockData.products[index].copyWith(
          isInCart: true,
        );
      }
      notifyListeners();
    }
  }

  /// Removes a product from the cart and updates the mock data state.
  void removeFromCart(String productId) {
    _cartItems.removeWhere((item) => item.id == productId);
    // Update the mock data product state
    final index = MockData.products.indexWhere((p) => p.id == productId);
    if (index != -1) {
      MockData.products[index] = MockData.products[index].copyWith(
        isInCart: false,
      );
    }
    notifyListeners();
  }

  /// Toggles the cart status of a product.
  void toggleCart(Product product) {
    if (isInCart(product.id)) {
      removeFromCart(product.id);
    } else {
      addToCart(product);
    }
  }
}
