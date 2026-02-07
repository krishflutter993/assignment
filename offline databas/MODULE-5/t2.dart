import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => CartProvider(), child: const MyApp()),
  );
}

/* -------- CART PROVIDER -------- */

class CartProvider extends ChangeNotifier {
  int itemCount = 0;

  void addItem() {
    itemCount++;
    notifyListeners();
  }
}

/* -------- APP -------- */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddItemScreen(),
    );
  }
}

/* -------- ADD ITEM SCREEN -------- */

class AddItemScreen extends StatelessWidget {
  const AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Items"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: cart.addItem,
          child: const Text("Add to Cart"),
        ),
      ),
    );
  }
}

/* -------- VIEW CART SCREEN -------- */

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: Center(
        child: Consumer<CartProvider>(
          builder: (context, cart, child) {
            return Text(
              "Items in Cart: ${cart.itemCount}",
              style: const TextStyle(fontSize: 22),
            );
          },
        ),
      ),
    );
  }
}
