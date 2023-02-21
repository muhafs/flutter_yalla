import 'package:flutter/material.dart';
import 'package:yalla/components/chat/chat_tile.dart';
import 'package:yalla/pages/chat/detail_chat_page.dart';
import 'package:yalla/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        pageHeader(),
        pageContent(),
      ],
    );
  }

  Widget pageHeader() {
    return AppBar(
      backgroundColor: kBackground1,
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Message Support',
        style: kTextStylePrimary.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }

  Widget pageContent() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: kBackground3,
        child: chatList(),
      ),
    );
  }

  Widget chatList() {
    return ListView(
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
    );
  }

  Widget emptyPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon_headset.png',
          width: 80,
        ),
        const SizedBox(height: 20),
        Text(
          'Opss no message yet?',
          style: kTextStylePrimary.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'You have never done a transaction',
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
              'Explore Store',
              style: kTextStylePrimary.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
