import 'package:flutter/material.dart';
import 'package:yalla/components/home/category_card.dart';
import 'package:yalla/components/home/product_card.dart';
import 'package:yalla/components/home/product_tile.dart';
import 'package:yalla/components/home/section_title.dart';
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
        children: [
          pageHeader(),
          categorySection(),
          popularProducts(),
          newArrivals(),
        ],
      ),
    );
  }

  Widget pageHeader() {
    return Padding(
      padding: const EdgeInsets.all(kDefaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Muhamad',
                  style: kTextStylePrimary.copyWith(
                    fontSize: 24,
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  '@muhamadhaspin',
                  style: kTextStyleSub.copyWith(
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
    );
  }

  Widget categorySection() {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultMargin),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: kDefaultMargin),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CategoryCard(title: 'All Shoes', isActive: true),
            CategoryCard(title: 'Running', isActive: false),
            CategoryCard(title: 'Training', isActive: false),
            CategoryCard(title: 'Basketball', isActive: false),
            CategoryCard(title: 'Hiking', isActive: false),
          ],
        ),
      ),
    );
  }

  Widget popularProducts() {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Popular Products'),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: kDefaultMargin),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
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
          ),
        ],
      ),
    );
  }

  Widget newArrivals() {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'New Arrivals'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ProductTile(
                imageName: 'image_shoes.png',
                category: 'Football',
                title: 'Predator 20.3 Firm Ground',
                price: '51.24',
              ),
              ProductTile(
                imageName: 'image_shoes2.png',
                category: 'Casual',
                title: 'Classic Buisnesse Gangnam Style V.02',
                price: '251.24',
              ),
              ProductTile(
                imageName: 'image_shoes3.png',
                category: 'School',
                title: 'Time Back to School 3.0',
                price: '51.24',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
