import 'package:flutter/material.dart';
import 'package:yalla/components/empty_page.dart';
import 'package:yalla/components/page_app_bar.dart';
import 'package:yalla/components/wish/wish_tile.dart';
import 'package:yalla/theme.dart';

class WishPage extends StatefulWidget {
  const WishPage({super.key});

  @override
  State<WishPage> createState() => _WishPageState();
}

class _WishPageState extends State<WishPage> {
  final EmptyPage emptyWish = const EmptyPage(
    imagePath: 'assets/image_wishlist.png',
    title: 'You don\'t have dream shoes?',
    subTitle: 'Let\'s find your favorite shoes',
    buttonText: 'Explore Store',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PageAppBar('Favorite Shoes'),
        pageContent(),
        // emptyWish,
      ],
    );
  }

  Widget pageContent() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: kBackground3,
        child: ListView(
          padding: const EdgeInsets.only(
            left: kDefaultMargin,
            top: 21,
            right: kDefaultMargin,
          ),
          children: const [
            WishTile(
              imageName: 'image_shoes.png',
              title: 'Predator 20.3 Firm Ground Boots',
              price: '68.39',
            ),
            WishTile(
              imageName: 'image_shoes.png',
              title: 'Predator 20.3 Firm Ground Boots',
              price: '68.39',
            ),
            WishTile(
              imageName: 'image_shoes.png',
              title: 'Predator 20.3 Firm Ground Boots',
              price: '68.39',
            ),
          ],
        ),
      ),
    );
  }
}
