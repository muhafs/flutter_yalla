import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.title,
    required this.isActive,
  }) : super(key: key);

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12,
      ),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: isActive ? kColorPrimary : kColorTransparent,
        border: Border.all(color: isActive ? kColorPrimary : kTextColorSub),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: (isActive ? kTextStylePrimary : kTextStyleSub).copyWith(
          fontSize: 13,
          fontWeight: medium,
        ),
      ),
    );
  }
}
