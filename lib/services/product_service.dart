// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yalla/models/product_model.dart';

class ProductService {
  //! BASE URL
  // 'https://yalla-backend.test/api'
  final String baseURL = 'http://192.168.1.103:8000/api';

  //! GET PRODUCTS
  Future<List<ProductModel>> getProducts() async {
    var response = await http.get(
      Uri.parse('$baseURL/products'),
      headers: {'Content-Type': 'application/json'},
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];

      List<ProductModel> products =
          data.map((product) => ProductModel.fromJson(product)).toList();

      return products;
    } else {
      throw Exception('Get Products Faild');
    }
  }

  //! -
}
