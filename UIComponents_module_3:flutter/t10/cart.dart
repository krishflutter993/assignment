import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List cartItems;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart"), backgroundColor: Colors.teal),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              cartItems[index]['image'],
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(cartItems[index]['name']),
            subtitle: Text('\$${cartItems[index]['price']}'),
          );
        },
      ),
    );
  }
}
