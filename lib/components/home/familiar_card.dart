import 'package:flutter/material.dart';

class FamiliarCard extends StatelessWidget {
  const FamiliarCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          imagePath,
          width: 54,
        ),
      ),
    );
  }
}
