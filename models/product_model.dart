import 'package:flutter/material.dart';

class Product {
  String name;
  String description;
  String? imagePath;

  Product({required this.name, required this.description, this.imagePath});
}

class ProductModel extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void addProduct(Product p) {
    _products.add(p);
    notifyListeners();
  }
}
