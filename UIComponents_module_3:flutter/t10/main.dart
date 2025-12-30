import 'package:flutter/material.dart';

import 'package:t10/cart.dart';

void main() {
  runApp(
    MaterialApp(home: _ShopingcarState(), debugShowCheckedModeBanner: false),
  );
}

class _ShopingcarState extends StatefulWidget {
  @override
  State<_ShopingcarState> createState() => __ShopingcarStateState();
}

class __ShopingcarStateState extends State<_ShopingcarState> {
  List aadcart = [];
  List cartItems = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
    "Item 10",
  ];
  List cartimg = [
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
    'https://imgs.search.brave.com/xgKiwpuGselJ-TvHcI6CtySSEzVzsPxv1RtHJ1N7s8w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Rh/LzkyLzg4ZGE5MjVm/MmJlYzNlMWViZjNj/YWFjNzMxZjA4YWMw/LmpwZw',
  ];
  List cartprice = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cartItems: aadcart),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),

                    child: Padding(
                      padding: EdgeInsets.all(10),

                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(9.0),
                          child: Image.network(
                            cartimg[index],
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          cartItems[index],
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Text(
                          '\$${cartprice[index]}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                        trailing: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              aadcart.add({
                                'name': cartItems[index],
                                'price': cartprice[index],
                                'image': cartimg[index],
                              });
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '${cartItems[index]} added to cart',
                                ),
                                duration: Duration(seconds: 2),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.teal,
                              ),
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                          ),
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text(
                            'Add to Cart',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
