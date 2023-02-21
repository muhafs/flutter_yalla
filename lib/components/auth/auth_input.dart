import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({
    Key? key,
    required this.title,
    required this.isPassword,
    required this.icon,
    required this.hint,
  }) : super(key: key);

  final String title;
  final bool isPassword;
  final String icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kTextStylePrimary.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: kBackground2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_$icon.png',
                  width: 17,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    style: kTextStylePrimary,
                    obscureText: isPassword,
                    decoration: InputDecoration.collapsed(
                      hintText: hint,
                      hintStyle: kTextStyleSub,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
