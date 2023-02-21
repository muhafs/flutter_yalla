import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.category,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image;
  final String category;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: const EdgeInsets.only(right: kDefaultMargin),
      decoration: BoxDecoration(
        color: kBackground5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kDefaultMargin),
          Image.asset(
            image,
            width: 215,
            height: 120,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: kTextStyleSecondary.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 6),
                Text(
                  title.toUpperCase(),
                  style: kTextStyleBlack.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  '\$$price',
                  style: kTextStylePrice.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
