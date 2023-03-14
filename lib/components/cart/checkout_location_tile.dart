import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class CheckoutLocationTile extends StatelessWidget {
  const CheckoutLocationTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.address,
    this.isLast = false,
  });

  final String imagePath;
  final String title;
  final String address;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: Column(
                children: [
                  Image.asset(
                    imagePath,
                    width: 40,
                  ),
                  !isLast
                      ? Image.asset(
                          'assets/icon_line.png',
                          height: 30,
                        )
                      : const SizedBox(height: 0),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kTextStyleSecondary.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
                Text(
                  address,
                  style: kTextStylePrimary.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
