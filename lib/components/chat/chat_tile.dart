import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.imageName,
    required this.title,
    required this.lastChat,
    required this.date,
    required this.onTap,
  });

  final String imageName;
  final String title;
  final String lastChat;
  final String date;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/$imageName.png',
                  width: 54,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: kPrimaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        lastChat,
                        style: kSecondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  date,
                  style: kSecondaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(
              thickness: 1,
              color: Color(0xFF2B2939),
            )
          ],
        ),
      ),
    );
  }
}
