import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class CheckoutItemTile extends StatelessWidget {
  const CheckoutItemTile({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: kBackground4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 60,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    title,
                    style: kTextStylePrimary.copyWith(
                      fontWeight: semibold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '\$$price',
                  style: kTextStylePrice,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 12),
            child: Text(
              quantity.toString() + (quantity > 1 ? ' Items' : ' Item'),
              style: kTextStyleSecondary.copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
