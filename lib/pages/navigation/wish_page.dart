import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class WishPage extends StatefulWidget {
  const WishPage({super.key});

  @override
  State<WishPage> createState() => _WishPageState();
}

class _WishPageState extends State<WishPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Wish Page',
        style: kPrimaryTextStyle,
      ),
    );
  }
}
