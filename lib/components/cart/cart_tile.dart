import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.quantity,
  });

  final String imagePath;
  final String title;
  final String price;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: kBackground4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    width: 60,
                  ),
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
                      const SizedBox(height: 2),
                      Text(
                        '\$$price',
                        style: kTextStylePrice,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/button_add.png', width: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        quantity,
                        style: kTextStylePrimary.copyWith(fontWeight: medium),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/button_min.png', width: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image.asset('assets/icon_remove.png', width: 10),
                const SizedBox(width: 4),
                Text(
                  'Remove',
                  style: kTextStyleAlert.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
