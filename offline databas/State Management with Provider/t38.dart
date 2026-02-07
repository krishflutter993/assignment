import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => CartProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductListScreen(),
    );
  }
}

// ---------------- PROVIDER ----------------
class CartProvider extends ChangeNotifier {
  final Map<String, double> _items = {};

  Map<String, double> get items => _items;

  double get totalPrice => _items.values.fold(0.0, (sum, price) => sum + price);

  void addItem(String name, double price) {
    _items[name] = price;
    notifyListeners();
  }

  void removeItem(String name) {
    _items.remove(name);
    notifyListeners();
  }
}

// ---------------- UI ----------------
class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {'name': 'Apple', 'price': 50.0},
    {'name': 'Banana', 'price': 20.0},
    {'name': 'Orange', 'price': 30.0},
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Cart (Provider)')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                final isInCart = cart.items.containsKey(product['name']);

                return ListTile(
                  title: Text(product['name']),
                  subtitle: Text('₹${product['price']}'),
                  trailing: IconButton(
                    icon: Icon(
                      isInCart ? Icons.remove_circle : Icons.add_circle,
                      color: isInCart ? Colors.red : Colors.green,
                    ),
                    onPressed: () {
                      isInCart
                          ? cart.removeItem(product['name'])
                          : cart.addItem(product['name'], product['price']);
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey.shade200,
            child: Consumer<CartProvider>(
              builder: (_, cart, __) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Price:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '₹${cart.totalPrice}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
