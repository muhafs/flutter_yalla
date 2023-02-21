import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({
    super.key,
    required this.pageHeader,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.buttonText,
  });

  final String pageHeader;
  final String imagePath;
  final String title;
  final String subTitle;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          backgroundColor: kBackground1,
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            pageHeader,
            style: kTextStylePrimary.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            color: kBackground3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  width: 80,
                ),
                const SizedBox(height: 20),
                Text(
                  title,
                  style: kTextStylePrimary.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  subTitle,
                  style: kTextStyleSub,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 44,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      backgroundColor: kColorPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      buttonText,
                      style: kTextStylePrimary.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
