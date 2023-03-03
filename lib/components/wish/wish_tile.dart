import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class WishTile extends StatelessWidget {
  const WishTile({
    super.key,
    required this.imageName,
    required this.title,
    required this.price,
  });

  final String imageName;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultMargin),
      padding: const EdgeInsets.fromLTRB(12, 10, 20, 10),
      decoration: BoxDecoration(
        color: kBackground4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/$imageName', width: 60),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kTextStylePrimary.copyWith(fontWeight: semibold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$$price',
                  style: kTextStylePrice,
                )
              ],
            ),
          ),
          Image.asset('assets/button_wishlist_blue.png', width: 34),
        ],
      ),
    );
  }
}
