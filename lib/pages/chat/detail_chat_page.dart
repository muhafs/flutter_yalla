import 'package:flutter/material.dart';
import 'package:yalla/components/chat/chat_bubble.dart';
import 'package:yalla/theme.dart';

class DetailChatPage extends StatefulWidget {
  const DetailChatPage({super.key});

  static const String id = 'detail_chat_page';

  @override
  State<DetailChatPage> createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground3,
      appBar: appBar(),
      bottomNavigationBar: bottomNavigationBar(),
      body: pageContent(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: kBackground1,
      centerTitle: false,
      toolbarHeight: 70,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/image_shop_logo_online.png',
            width: 50,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shoe Store',
                style: kTextStylePrimary.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              Text(
                'Online',
                style: kTextStyleSecondary.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(10),
            width: 225,
            height: 74,
            decoration: BoxDecoration(
              color: kBackground6,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: kColorPrimary,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_shoes5.png',
                    width: 54.48,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Court Vision v.20'.toUpperCase(),
                        style: kTextStylePrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '\$50.41',
                        style: kTextStylePrice.copyWith(
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/button_close.png',
                  width: 22,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: kBackground4,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Message...',
                        hintStyle: kTextStyleSub,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Image.asset(
                'assets/button_send.png',
                width: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pageContent() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: const [
        ChatBubble(
          text: "Hi, This item is still available?",
          isSender: true,
          hasProduct: true,
        ),
        ChatBubble(
          text: "Good night sir, This item is onle available in size 42 and 43",
          isSender: false,
        ),
      ],
    );
  }
}
