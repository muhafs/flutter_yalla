import 'package:flutter/material.dart';
import 'package:yalla/components/chat/chat_tile.dart';
import 'package:yalla/components/empty_page.dart';
import 'package:yalla/components/page_app_bar.dart';
import 'package:yalla/pages/chat/detail_chat_page.dart';
import 'package:yalla/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final EmptyPage emptyChat = const EmptyPage(
    imagePath: 'assets/icon_headset.png',
    subTitle: 'You have never done a transaction',
    title: 'Opss no message yet?',
    buttonText: 'Explore Store',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PageAppBar('Message Support'),
        pageContent(),
        // emptyChat,
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
          children: [
            ChatTile(
              onTap: () {
                Navigator.pushNamed(context, DetailChatPage.id);
              },
              imageName: 'image_shop_logo',
              title: 'Shoe Store',
              lastChat:
                  'Good night, This item is on delivery state to your address',
              date: 'Now',
            ),
          ],
        ),
      ),
    );
  }
}
