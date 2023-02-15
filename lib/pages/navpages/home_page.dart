import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(
          top: kDefaultMargin,
          left: kDefaultMargin,
          right: kDefaultMargin,
        ),
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Muhamad',
                      style: kPrimaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      '@muhamadhaspin',
                      style: kSubTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage('assets/image_profile.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
