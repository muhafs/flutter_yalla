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
      backgroundColor: kBackground5,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(kDefaultMargin),
          children: [
            pageHeader(),
          ],
        ),
      ),
    );
  }

  Widget pageHeader() {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.chevron_left,
                  color: kBackground1,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.shopping_bag,
                  color: kBackground1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
