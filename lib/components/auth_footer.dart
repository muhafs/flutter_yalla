import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    Key? key,
    required this.text,
    required this.textLink,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String textLink;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: kSubTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              textLink,
              style: kPurpleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
