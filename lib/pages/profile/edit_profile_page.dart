import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  static const String id = 'edit_profile_page';

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground3,
      appBar: pageHeader(),
      body: pageContent(),
    );
  }

  AppBar pageHeader() {
    return AppBar(
      backgroundColor: kBackground1,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                  color: kTextColorPrimary,
                ),
                Text(
                  'Edit Profile',
                  style: kTextStylePrimary.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.check),
                  color: kColorPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pageContent() {
    return Container();
  }
}
