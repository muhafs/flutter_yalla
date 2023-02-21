import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14.0),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
      child: Text(
        title,
        style: kTextStylePrimary.copyWith(
          fontSize: 22,
          fontWeight: semibold,
        ),
      ),
    );
  }
}
