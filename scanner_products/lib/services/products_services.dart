import 'package:flutter/material.dart';
import 'package:scanner_products/models/product.dart';

class ProductsServices extends ChangeNotifier {
  final String _baseUrl =
      'https://flutter-varios-78579-default-rtdb.firebaseio.com';

  final List<Product> products = [];

  // TODO Hacer el fetch de productos
}
