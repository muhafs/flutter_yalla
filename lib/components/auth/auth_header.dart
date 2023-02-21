import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultMargin, bottom: 70.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTextStylePrimary.copyWith(
              fontSize: 24,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            subTitle,
            style: kTextStyleSub,
          ),
        ],
      ),
    );
  }
}
