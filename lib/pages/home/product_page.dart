import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  static const String id = 'product_page';

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground1,
      body: Center(
        child: Text(
          'product page',
          style: kTextStylePrimary,
        ),
      ),
    );
  }
}
