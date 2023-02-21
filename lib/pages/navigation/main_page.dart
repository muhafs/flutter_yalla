import 'package:flutter/material.dart';
import 'package:yalla/pages/navigation/chat_page.dart';
import 'package:yalla/pages/navigation/home_page.dart';
import 'package:yalla/pages/navigation/profile_page.dart';
import 'package:yalla/pages/navigation/wish_page.dart';
import 'package:yalla/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String id = "main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List pages = const [
    HomePage(),
    ChatPage(),
    WishPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex == 0 ? kBackground1 : kBackground3,
      //
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      //
      bottomNavigationBar: bottomNavigationBar(),
      //
      body: pages[currentIndex],
    );
  }

  Widget floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: kColorSecondary,
      child: Image.asset('assets/icon_cart.png', width: 20),
    );
  }

  //Todo: Need to modified
  Widget bottomNavigationBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
      //
      child: BottomAppBar(
        color: kBackground4,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 10,
        //
        child: BottomNavigationBar(
          backgroundColor: kBackground4,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //
          currentIndex: currentIndex,
          onTap: (value) => setState(() => currentIndex = value),
          //
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 20,
                  color:
                      currentIndex == 0 ? kColorPrimary : kColorUnselectedNav,
                ),
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/icon_chat.png',
                  width: 20,
                  color:
                      currentIndex == 1 ? kColorPrimary : kColorUnselectedNav,
                ),
              ),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 20,
                  color:
                      currentIndex == 2 ? kColorPrimary : kColorUnselectedNav,
                ),
              ),
              label: 'wishlist',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 18,
                  color:
                      currentIndex == 3 ? kColorPrimary : kColorUnselectedNav,
                ),
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
