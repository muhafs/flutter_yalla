import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class ProfileInput extends StatelessWidget {
  const ProfileInput({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
    this.isUsername = false,
  });

  final String title;
  final String hintText;
  final TextEditingController? controller;
  final bool isUsername;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTextStyleSecondary.copyWith(fontSize: 13),
          ),
          TextFormField(
            controller: controller,
            style: kTextStylePrimary,
            decoration: InputDecoration(
              prefixText: isUsername ? '@' : null,
              prefixStyle: isUsername ? kTextStyleSub : null,
              hintText: hintText,
              hintStyle: kTextStyleSub,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextColorSub,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kColorPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
