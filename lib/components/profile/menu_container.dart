import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTextStylePrimary.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: children,
          ),
        ],
      ),
    );
  }
}
