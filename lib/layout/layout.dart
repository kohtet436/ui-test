import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_ui/pages/cart.dart';
import 'package:test_ui/pages/favourite.dart';
import 'package:test_ui/pages/homepage.dart';
import 'package:test_ui/pages/profile.dart';
import 'package:test_ui/provider/layout_provider.dart';

class Layout extends StatelessWidget {
  Layout({super.key});
  List<dynamic> screens = const [
    HomePage(),
    CartPage(),
    FavouritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenindexprovider = Provider.of<ScreenIndexProvider>(context);
    int currentScreenIndex = screenindexprovider.screenIndex;
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentScreenIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: currentScreenIndex,
          onTap: (value) => screenindexprovider.updateScreenIndex(value),
          items: const [
            BottomNavigationBarItem(
                label: '',
                backgroundColor: Colors.white,
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: '',
                backgroundColor: Colors.white,
                icon: Icon(Icons.shopping_basket)),
            BottomNavigationBarItem(
                label: '',
                backgroundColor: Colors.white,
                icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                label: '',
                backgroundColor: Colors.white,
                icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
