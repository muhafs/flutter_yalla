import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 16.0 : 4.0,
      height: 4,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: isActive ? kColorPrimary : const Color(0xFFC4C4C4),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
