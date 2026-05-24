# StyleCart — E-Commerce App Documentation

## Project Overview

**StyleCart** is a modern e-commerce home page built with Flutter, designed to showcase a grocery/general store experience. The app features a visually appealing UI with smooth animations, responsive layout, and a clean architecture using the Provider pattern for state management.

---

## Tools & Technologies Used

| Tool / Technology | Purpose |
|---|---|
| **Flutter 3.x** | Cross-platform mobile framework |
| **Dart** | Programming language |
| **Provider (v6.1.2)** | Lightweight state management using ChangeNotifier |
| **Google Fonts (v6.2.1)** | Custom typography (Poppins font family) |
| **Smooth Page Indicator (v1.2.0)** | Animated page dots for the banner slider |
| **Material 3** | Modern Material Design system |

---

## Architecture & Design Patterns

### State Management: Provider Pattern

The app uses the **Provider** package with `ChangeNotifier` for state management. This was chosen because:

1. **Simplicity**: Provider is the officially recommended approach by the Flutter team for apps that don't require complex state management.
2. **Scalability**: While lightweight, it scales well for this app's needs (cart management, UI state).
3. **Separation of Concerns**: Business logic (CartProvider) is cleanly separated from UI code.

```dart
// Example: CartProvider notifies listeners when cart changes
class CartProvider extends ChangeNotifier {
  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners(); // Triggers UI rebuild
  }
}
```

### Folder Structure

```
lib/
├── main.dart                    # App entry point, theme, and Provider setup
├── models/
│   ├── product.dart             # Product data model
│   └── category.dart            # Category data model
├── data/
│   └── mock_data.dart           # Static mock data for products, categories, banners
├── providers/
│   └── cart_provider.dart       # Cart state management using ChangeNotifier
├── screens/
│   ├── home_page.dart           # Main home page with all sections
│   └── product_detail_page.dart # Product detail page (placeholder with full UI)
└── widgets/
    ├── banner_slider.dart       # Auto-scrolling promotional banner
    ├── category_list.dart       # Horizontal scrollable category chips
    └── product_card.dart        # Grid-ready product card with cart toggle
```

---

## Key Features

### 1. Custom App Bar
- Branded "StyleCart" title with tagline
- Search icon button
- Cart icon with animated badge showing item count

### 2. Search Bar
- Decorative search field with filter icon
- Placeholder text guiding users

### 3. Banner Slider
- `PageView`-based horizontal slider with 3 promotional banners
- Auto-scrolls every 3 seconds
- Gradient backgrounds with decorative circle elements
- Animated dot indicators using `SmoothPageIndicator`

### 4. Categories Section
- Horizontal scrollable list of 6 product categories
- Animated selection state with color and shadow transitions
- Category icons from Material Icons

### 5. Product Grid
- 2-column grid layout using `SliverGrid`
- Each card displays: emoji image, product name, rating, price, and add-to-cart button
- Animated cart toggle with SnackBar feedback
- Hero animation transition to detail page

### 6. Product Detail Page
- `SliverAppBar` with Hero animation for smooth image transition
- Category tag, rating badge, and price display
- Product description with nutrition info section
- Full-width Add to Cart / Remove from Cart button

---

## UI/UX Design Decisions

1. **Color Palette**: Emerald green (`#2E7D32`) was chosen as the primary color to convey freshness, health, and nature — fitting for a grocery app.

2. **Typography**: Poppins (via Google Fonts) provides a clean, modern, and highly legible typeface across all screen sizes.

3. **Card Design**: Rounded corners (18px radius) with subtle shadows create depth without visual clutter.

4. **Emoji Icons**: Product images use emojis instead of external assets, making the app fully self-contained with no network dependencies.

5. **Animations**:
   - Banner auto-scroll with easeInOut curve
   - Category selection with animated container transitions
   - Cart button color toggle animation
   - Hero animation between product card and detail page

6. **Responsive Layout**: `CustomScrollView` with Slivers ensures smooth scrolling and proper layout across different screen sizes.

---

## How to Run

### Prerequisites
- Flutter SDK (3.x or later)
- Dart SDK
- Android Studio / VS Code with Flutter extension
- An Android emulator or iOS simulator (or physical device)

### Steps

```bash
# 1. Navigate to project directory
cd ecommerce_app

# 2. Install dependencies
flutter pub get

# 3. Run the app
flutter run

# 4. (Optional) Analyze code for issues
flutter analyze

# 5. (Optional) Build APK
flutter build apk --debug
```

---

## Challenges & Solutions

### Challenge 1: Product Images Without Network Dependencies
**Problem**: Using network images would require internet connectivity and could fail during demos.
**Solution**: Used emoji characters as product representations within colored containers. This makes the app fully offline-capable while still being visually engaging.

### Challenge 2: Smooth Banner Auto-Scroll
**Problem**: The banner slider needed to auto-scroll while also allowing manual swiping without conflicts.
**Solution**: Used a `Timer.periodic` for auto-scrolling with `PageController.animateToPage()`, and the `onPageChanged` callback to sync the current page state with manual swipes.

### Challenge 3: Cart State Synchronization
**Problem**: Cart state needed to be reflected consistently across the home page grid and the detail page.
**Solution**: Used Provider's `ChangeNotifier` pattern so that both screens listen to the same `CartProvider` instance. Any cart change triggers a rebuild in all listening widgets.

### Challenge 4: Responsive Grid Layout
**Problem**: The product grid needed to look good on various screen sizes.
**Solution**: Used `SliverGrid` with `SliverGridDelegateWithFixedCrossAxisCount` (2 columns) and a carefully chosen aspect ratio (0.72) to ensure cards are well-proportioned across devices.

---

## Future Enhancements

If this were to be developed further, the following features could be added:

- **Search Functionality**: Full-text search with filtering
- **Category Filtering**: Filter products by selected category
- **Cart Screen**: Dedicated cart page with quantity adjustment
- **Checkout Flow**: Multi-step checkout process
- **User Authentication**: Login/registration
- **Backend Integration**: REST API or Firebase for real data
- **Dark Mode**: Toggle between light and dark themes
- **Animations**: More advanced animations using AnimationController

---

## Author

Built as part of an internship assessment to demonstrate Flutter development skills, clean architecture, state management, and modern UI/UX design principles.
