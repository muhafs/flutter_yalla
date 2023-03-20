import 'package:flutter/material.dart';
import 'package:yalla/models/product_model.dart';
import 'package:yalla/services/product_service.dart';

class ProductProvider with ChangeNotifier {
  late List<ProductModel> _products;

  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  //! REGISTER
  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProducts();

      _products = products;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  //! -
}
