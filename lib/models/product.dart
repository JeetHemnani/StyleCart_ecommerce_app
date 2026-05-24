import 'package:flutter/material.dart';

/// Represents a product in the e-commerce store.
class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final String category;
  final double rating;
  final String imageUrl; // Network image URL
  final Color color; // Background color for the product card
  bool isInCart;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.category,
    required this.rating,
    required this.imageUrl,
    required this.color,
    this.isInCart = false,
  });

  Product copyWith({bool? isInCart}) {
    return Product(
      id: id,
      name: name,
      price: price,
      description: description,
      category: category,
      rating: rating,
      imageUrl: imageUrl,
      color: color,
      isInCart: isInCart ?? this.isInCart,
    );
  }
}
