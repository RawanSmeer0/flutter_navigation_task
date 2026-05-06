import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: "Laptop", description: "Powerful device", price: 1200),
    Product(name: "Phone", description: "Smart phone", price: 800),
    Product(name: "Headphones", description: "High quality sound", price: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text("\$${products[index].price}"),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailsScreen(
                    product: products[index],
                  ),
                ),
              );

              if (result != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(result)),
                );
              }
            },
          );
        },
      ),
    );
  }
}