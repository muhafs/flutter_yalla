import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String id = "main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor1,
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
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_home.png', width: 20),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_chat.png', width: 20),
                label: 'chat',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_wishlist.png', width: 20),
                label: 'wishlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_profile.png', width: 18),
                label: 'profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
