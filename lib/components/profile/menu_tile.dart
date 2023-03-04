import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: kTextStyleSecondary,
            ),
            const Icon(
              Icons.chevron_right,
              color: kTextColorPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
