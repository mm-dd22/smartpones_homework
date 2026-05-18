import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),

      body: ListView(
        children: const [
          ProductBox(
            name: "iPhone",
            brand: "Apple",
            description: "Smart phone",
            price: 4500,
          ),

          ProductBox(
            name: "Laptop",
            brand: "Lenovo",
            description: "Programming laptop",
            price: 3200,
          ),

          ProductBox(
            name: "Tablet",
            brand: "Samsung",
            description: "Useful for study",
            price: 1800,
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String brand;
  final String description;
  final int price;

  const ProductBox({
    super.key,
    required this.name,
    required this.brand,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),

      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text("Brand: $brand"),

            const SizedBox(height: 10),

            Text(description),

            const SizedBox(height: 10),

            Text("Price: $price SAR"),
          ],
        ),
      ),
    );
  }
}
