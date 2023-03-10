import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yalla/components/home/carousel_indicator.dart';
import 'package:yalla/components/home/familiar_card.dart';
import 'package:yalla/pages/chat/detail_chat_page.dart';
import 'package:yalla/theme.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  static const String id = 'product_page';

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
  ];

  int currentIndex = 0;

  bool isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground5,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(top: 20),
          children: [
            pageHeader(),
            pageContent(),
          ],
        ),
      ),
    );
  }

  Widget pageHeader() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.chevron_left,
                  color: kBackground1,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.shopping_bag,
                  color: kBackground1,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: CarouselSlider(
            items: images
                .map(
                  (path) => Image.asset(
                    path,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselIndicator(isActive: currentIndex == 0 ? true : false),
              CarouselIndicator(isActive: currentIndex == 1 ? true : false),
              CarouselIndicator(isActive: currentIndex == 2 ? true : false),
            ],
          ),
        ),
      ],
    );
  }

  Widget pageContent() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultMargin),
      decoration: const BoxDecoration(
        color: kBackground1,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 20,
              left: kDefaultMargin,
              right: kDefaultMargin,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terrex Urban Low'.toUpperCase(),
                        style: kTextStylePrimary.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text(
                        'Hiking',
                        style: kTextStyleSecondary.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    isWishlisted = !isWishlisted;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor:
                            isWishlisted ? kColorSecondary : kColorAlert,
                        content: Text(
                          isWishlisted
                              ? 'Has been added to the Wishlist'
                              : 'Has been removed from Wishlist',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }),
                  child: Image.asset(
                    isWishlisted
                        ? 'assets/button_wishlist_blue.png'
                        : 'assets/button_wishlist.png',
                    width: 46,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: kDefaultMargin,
              left: kDefaultMargin,
              right: kDefaultMargin,
            ),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: kBackground2,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price starts from',
                  style: kTextStylePrimary,
                ),
                Text(
                  '\$143.98',
                  style: kTextStylePrice.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: kDefaultMargin,
              left: kDefaultMargin,
              right: kDefaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Description',
                    style: kTextStylePrimary.copyWith(fontWeight: medium),
                  ),
                ),
                Text(
                  'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                  style: kTextStyleSub.copyWith(fontWeight: light),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 12,
                    left: kDefaultMargin,
                    right: kDefaultMargin,
                  ),
                  child: Text(
                    'Fimiliar Shoes',
                    style: kTextStylePrimary.copyWith(fontWeight: medium),
                  ),
                ),
                SingleChildScrollView(
                  padding:
                      const EdgeInsets.only(left: kDefaultMargin, right: 14),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      FamiliarCard(imagePath: 'assets/image_shoes.png'),
                      FamiliarCard(imagePath: 'assets/image_shoes2.png'),
                      FamiliarCard(imagePath: 'assets/image_shoes3.png'),
                      FamiliarCard(imagePath: 'assets/image_shoes4.png'),
                      FamiliarCard(imagePath: 'assets/image_shoes5.png'),
                      FamiliarCard(imagePath: 'assets/image_shoes6.png'),
                      FamiliarCard(imagePath: 'assets/image_shoes7.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, DetailChatPage.id),
                  child: Image.asset('assets/button_chat.png', width: 54),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SizedBox(
                    height: 54,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kColorPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        showSuccessDialog();
                      },
                      child: Text(
                        'Add to cart',
                        style: kTextStylePrimary.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showSuccessDialog() async {
    return showDialog(
      context: context,
      builder: (context) => SizedBox(
        width: MediaQuery.of(context).size.width - (kDefaultMargin * 2),
        child: AlertDialog(
          contentPadding: const EdgeInsets.all(kDefaultMargin),
          backgroundColor: kBackground3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultMargin),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                            color: kTextColorPrimary,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icon_success.png',
                        width: 135,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Hurray :)',
                    style: kTextStylePrimary.copyWith(
                      fontSize: 18,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Item added successfully',
                    style: kTextStyleSecondary,
                  ),
                ),
                SizedBox(
                  width: 154,
                  height: 44,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: kColorPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'View my cart',
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
      ),
    );
  }
}
