import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class PageAppBar extends StatelessWidget {
  const PageAppBar(
    this.title, {
    Key? key,
    this.automaticallyImplyLeading = false,
  }) : super(key: key);

  final String title;
  final bool automaticallyImplyLeading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBackground1,
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      elevation: 0,
      title: Text(
        title,
        style: kTextStylePrimary.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }
}
