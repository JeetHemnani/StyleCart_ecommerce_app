import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/category.dart';

/// Mock data for the e-commerce app.
/// This class provides static lists of products, categories, and banner data.
/// Uses real product images from Unsplash (free to use, stable URLs).
class MockData {
  // ─── Categories ───────────────────────────────────────────────
  static const List<Category> categories = [
    Category(
      id: 'all',
      name: 'All',
      icon: Icons.grid_view_rounded,
      color: Color(0xFFE8EAF6),
    ),
    Category(
      id: 'fruits',
      name: 'Fruits',
      icon: Icons.apple,
      color: Color(0xFFE8F5E9),
    ),
    Category(
      id: 'vegetables',
      name: 'Vegetables',
      icon: Icons.eco,
      color: Color(0xFFF1F8E9),
    ),
    Category(
      id: 'snacks',
      name: 'Snacks',
      icon: Icons.cookie,
      color: Color(0xFFFFF3E0),
    ),
    Category(
      id: 'dairy',
      name: 'Dairy',
      icon: Icons.egg,
      color: Color(0xFFFCE4EC),
    ),
    Category(
      id: 'beverages',
      name: 'Beverages',
      icon: Icons.local_cafe,
      color: Color(0xFFE3F2FD),
    ),
    Category(
      id: 'bakery',
      name: 'Bakery',
      icon: Icons.bakery_dining,
      color: Color(0xFFFFF8E1),
    ),
  ];

  // ─── Products ─────────────────────────────────────────────────
  // Images sourced from Unsplash (free, high-quality, stable URLs)
  static List<Product> products = [
    Product(
      id: 'p1',
      name: 'Red Apple',
      price: 3.49,
      description:
          'Fresh, crispy red apples sourced from organic farms. Rich in fiber and vitamins, perfect for a healthy snack.',
      category: 'Fruits',
      rating: 4.5,
      imageUrl:
          'https://images.unsplash.com/photo-1579613832125-5d34a13ffe2a?w=400&q=80&auto=format',
      color: const Color(0xFFFFEBEE),
    ),
    Product(
      id: 'p2',
      name: 'Banana Bunch',
      price: 1.99,
      description:
          'A bunch of ripe, golden bananas. Naturally sweet and packed with potassium and energy.',
      category: 'Fruits',
      rating: 4.3,
      imageUrl:
          'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=400&q=80&auto=format',
      color: const Color(0xFFFFF9C4),
    ),
    Product(
      id: 'p3',
      name: 'Fresh Broccoli',
      price: 2.29,
      description:
          'Organic green broccoli florets. A superfood rich in vitamins C and K, great for stir-fry or steaming.',
      category: 'Vegetables',
      rating: 4.1,
      imageUrl:
          'https://images.unsplash.com/photo-1459411552884-841db9b3cc2a?w=400&q=80&auto=format',
      color: const Color(0xFFE8F5E9),
    ),
    Product(
      id: 'p4',
      name: 'Carrot Pack',
      price: 1.79,
      description:
          'Crunchy, sweet carrots in a convenient pack. Perfect for salads, juicing, or snacking.',
      category: 'Vegetables',
      rating: 4.4,
      imageUrl:
          'https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?w=400&q=80&auto=format',
      color: const Color(0xFFFFF3E0),
    ),
    Product(
      id: 'p5',
      name: 'Potato Chips',
      price: 4.99,
      description:
          'Crispy, lightly salted potato chips made from premium potatoes. The perfect party snack.',
      category: 'Snacks',
      rating: 4.7,
      imageUrl:
          'https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=400&q=80&auto=format',
      color: const Color(0xFFFFFDE7),
    ),
    Product(
      id: 'p6',
      name: 'Whole Milk',
      price: 3.99,
      description:
          'Farm-fresh whole milk, pasteurized and packed with calcium and protein. Great for everyday use.',
      category: 'Dairy',
      rating: 4.6,
      imageUrl:
          'https://images.unsplash.com/photo-1563636619-e9143da7973b?w=400&q=80&auto=format',
      color: const Color(0xFFF3E5F5),
    ),
    Product(
      id: 'p7',
      name: 'Orange Juice',
      price: 5.49,
      description:
          '100% freshly squeezed orange juice with no added sugar. A refreshing start to your morning.',
      category: 'Beverages',
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?w=400&q=80&auto=format',
      color: const Color(0xFFFFF3E0),
    ),
    Product(
      id: 'p8',
      name: 'Sourdough Bread',
      price: 4.29,
      description:
          'Artisan sourdough bread baked fresh daily. Crusty exterior with a soft, tangy interior.',
      category: 'Bakery',
      rating: 4.9,
      imageUrl:
          'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=400&q=80&auto=format',
      color: const Color(0xFFFFECB3),
    ),
    Product(
      id: 'p9',
      name: 'Strawberries',
      price: 6.99,
      description:
          'Juicy, sweet strawberries picked at peak ripeness. Perfect for desserts or eating fresh.',
      category: 'Fruits',
      rating: 4.6,
      imageUrl:
          'https://images.unsplash.com/photo-1464965911861-746a04b4bca6?w=400&q=80&auto=format',
      color: const Color(0xFFFFCDD2),
    ),
    Product(
      id: 'p10',
      name: 'Green Tea',
      price: 7.99,
      description:
          'Premium Japanese green tea leaves. Antioxidant-rich with a smooth, delicate flavor.',
      category: 'Beverages',
      rating: 4.5,
      imageUrl:
          'https://images.unsplash.com/photo-1556881286-fc6915169721?w=400&q=80&auto=format',
      color: const Color(0xFFC8E6C9),
    ),
  ];

  // ─── Banner / Promotions ──────────────────────────────────────
  static const List<Map<String, dynamic>> banners = [
    {
      'title': 'Fresh Fruits',
      'subtitle': 'Up to 30% OFF on seasonal fruits',
      'imageUrl':
          'https://images.unsplash.com/photo-1619566636858-adf3ef46400b?w=300&q=80&auto=format',
      'gradient': [Color(0xFF43A047), Color(0xFF66BB6A)],
    },
    {
      'title': 'Snack Time!',
      'subtitle': 'Buy 2, Get 1 Free on all snacks',
      'imageUrl':
          'https://images.unsplash.com/photo-1621939514649-280e2ee25f60?w=300&q=80&auto=format',
      'gradient': [Color(0xFFFF8F00), Color(0xFFFFB74D)],
    },
    {
      'title': 'Farm Fresh',
      'subtitle': 'Organic vegetables at best prices',
      'imageUrl':
          'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=300&q=80&auto=format',
      'gradient': [Color(0xFF2E7D32), Color(0xFF81C784)],
    },
  ];
}
