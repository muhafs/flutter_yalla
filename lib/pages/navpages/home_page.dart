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
        padding: const EdgeInsets.only(top: kDefaultMargin),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
            child: Row(
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
          ),
          const SizedBox(height: kDefaultMargin),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: kDefaultMargin),
                CategoryCard(title: 'All Shoes', isActive: true),
                CategoryCard(title: 'Running', isActive: false),
                CategoryCard(title: 'Training', isActive: false),
                CategoryCard(title: 'Basketball', isActive: false),
                CategoryCard(title: 'Hiking', isActive: false),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.title,
    required this.isActive,
  }) : super(key: key);

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12,
      ),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : kTransparentColor,
        border: Border.all(color: isActive ? kPrimaryColor : kSubTextColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: (isActive ? kPrimaryTextStyle : kSubTextStyle).copyWith(
          fontSize: 13,
          fontWeight: medium,
        ),
      ),
    );
  }
}
