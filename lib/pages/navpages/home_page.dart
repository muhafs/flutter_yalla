import 'package:flutter/material.dart';
import 'package:yalla/components/home/category_card.dart';
import 'package:yalla/components/home/product_card.dart';
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
          ),
          const SizedBox(height: kDefaultMargin),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
            child: Text(
              'Popular Products',
              style: kPrimaryTextStyle.copyWith(
                fontSize: 22,
                fontWeight: semibold,
              ),
            ),
          ),
          const SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: kDefaultMargin),
                ProductCard(
                  image: 'assets/image_shoes.png',
                  category: 'Hiking',
                  title: 'court vision 2.0',
                  price: '50.12',
                ),
                ProductCard(
                  image: 'assets/image_shoes2.png',
                  category: 'Running',
                  title: 'master vision 2.0',
                  price: '150.53',
                ),
                ProductCard(
                  image: 'assets/image_shoes3.png',
                  category: 'Basketball',
                  title: 'dollar vision 2.0',
                  price: '1999.99',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
