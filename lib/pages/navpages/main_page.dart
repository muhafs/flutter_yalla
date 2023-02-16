import 'package:flutter/material.dart';
import 'package:yalla/pages/navpages/chat_page.dart';
import 'package:yalla/pages/navpages/home_page.dart';
import 'package:yalla/pages/navpages/profile_page.dart';
import 'package:yalla/pages/navpages/wish_page.dart';
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
      backgroundColor: currentIndex == 1 ? kBgColor3 : kBgColor1,
      //
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kSecondaryColor,
        child: Image.asset('assets/icon_cart.png', width: 20),
      ),
      //
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        //
        child: BottomAppBar(
          color: kBgColor4,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 10,
          //
          child: BottomNavigationBar(
            backgroundColor: kBgColor4,
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
                        currentIndex == 0 ? kPrimaryColor : kUnselectedNavColor,
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
                        currentIndex == 1 ? kPrimaryColor : kUnselectedNavColor,
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
                        currentIndex == 2 ? kPrimaryColor : kUnselectedNavColor,
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
                        currentIndex == 3 ? kPrimaryColor : kUnselectedNavColor,
                  ),
                ),
                label: 'profile',
              ),
            ],
          ),
        ),
      ),
      //
      body: pages[currentIndex],
    );
  }
}
