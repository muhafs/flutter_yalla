import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yalla/components/home/carousel_indicator.dart';
import 'package:yalla/theme.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  static const String id = 'product_page';

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground5,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(top: 20),
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
          margin: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
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
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: CarouselSlider(
            items: images
                .map(
                  (path) => Image.asset(
                    path,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselIndicator(isActive: currentIndex == 0 ? true : false),
            CarouselIndicator(isActive: currentIndex == 1 ? true : false),
            CarouselIndicator(isActive: currentIndex == 2 ? true : false),
          ],
        ),
      ],
    );
  }
}
