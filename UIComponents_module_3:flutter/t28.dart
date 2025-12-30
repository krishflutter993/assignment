import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Product Listing',
      home: ProductListingScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

class ProductListingScreen extends StatefulWidget {
  @override
  State<ProductListingScreen> createState() => _ProductListingScreenState();
}

class _ProductListingScreenState extends State<ProductListingScreen> {
  final List<Product> products = [
    Product(
      name: "Mercedes G Class AMG G 63 ",
      imageUrl:
          "https://imgs.search.brave.com/UMTdw2nqzvMZ0zpbf2ba0zGb2dJZCS5VxW4qLmP4XJ8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/c3VwZXJjYXJzLm5l/dC9ibG9nL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDIwLzExLzIw/MTktTWVyY2VkZXMt/QU1HLUc2My0wMDMt/MjAwMC1zY2FsZWQu/anBn",
      price: 35900000,
    ),
    Product(
      name: "Defender",
      imageUrl:
          "https://imgs.search.brave.com/_KUUSn69Q3rE128Q17mtksFBYVnEPFAZuqnAT303UU0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/bGFuZHJvdmVyLmVz/L2NvbnRlbnQvZGFt/L2xhbmRyb3Zlci9n/bG9iYWwvdmVoaWNs/ZXMvZGVmZW5kZXIv/MjNteS9MNjYzXzIz/TVlfMDU1X0dMSERf/OTBfVjhfQ0UuanBn/LnJlcy9KTFJIQVNI/MkQ1MURBQzE4Qzc5/NDUxMjBBNjQxMDhD/RTdDNzg4NzQ0QTRG/RjUzNi9MNjYzXzIz/TVlfMDU1X0dMSERf/OTBfVjhfQ0UuanBn",
      price: 14200000,
    ),
    Product(
      name: "convertible Porsche Boxster",
      imageUrl:
          "https://imgs.search.brave.com/P6IarweXrJMVoKYPeW3WjqKMjcgf4u8NyVq2yZJwA5Q/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bGluZW1lZGlhLmNv/bS9pbWcvcy9jb252/ZXJ0aWJsZS1Qb3Jz/Y2hlLUJveHN0ZXIt/LS0xNzUzMzc1NDk4/Nzk5Njc0NzA2X2Nv/bW1vbi0tMjUwNzI0/MTk0NDU3NzAxOTI1/MDAuanBn",
      price: 15200000,
    ),
    Product(
      name: "BMW M5",
      imageUrl:
          "https://imgs.search.brave.com/_cnB1ZoHG_eP659-UupR6V8Rl0SeDkCuFpBcaPCZeZ4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWdk/LmFlcGxjZG4uY29t/LzY2NHgzNzQvbi9j/dy9lYy81MDcyMy9t/NS1mYWNlbGlmdC1l/eHRlcmlvci1yaWdo/dC1mcm9udC10aHJl/ZS1xdWFydGVyLmpw/ZWc_cT04MA",
      price: 19900000,
    ),
    Product(
      name: "Lamborghini Aventador SVJ",
      imageUrl:
          "https://imgs.search.brave.com/-Xc2H-8_dlS_NXD2tveoi3npzOVCfySINcyhJ0hZxcE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy81/LzUyL0xhbWJvcmdo/aW5pX0F2ZW50YWRv/cl9TVkpfWWVsbG93/LmpwZw",
      price: 62500000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Listing')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                width: 160,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.network(
                          product.imageUrl,
                          height: 140,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green[700],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
