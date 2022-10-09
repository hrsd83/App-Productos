import 'package:flutter/material.dart';
import 'package:scanner_products/widgets/product_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Productos'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'product'),
                child: const ProductCards(),
              )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
