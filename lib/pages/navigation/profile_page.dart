import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: kBackground1,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultMargin),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    child: Image.asset('assets/image_profile.png'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Muhamad',
                          style: kTextStylePrimary.copyWith(
                            fontWeight: semibold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          '@muhamadhaspin',
                          style: kTextStyleSub.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/button_exit.png',
                    width: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
