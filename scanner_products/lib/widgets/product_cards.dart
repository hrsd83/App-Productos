import 'package:flutter/material.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 30),
          width: double.infinity,
          height: 400,
          decoration: _CardsBorders(),
        ),
      ),
    );
  }

  BoxDecoration _CardsBorders() => BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(blurRadius: 5, color: Colors.white70, offset: Offset(0, 4)),
        ],
      );
}
