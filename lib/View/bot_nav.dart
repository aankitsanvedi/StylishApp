import 'package:app_first/Utils/constant_color.dart';
import 'package:app_first/View/Pages/Home/home_screen.dart';
import 'package:app_first/View/Pages/Order/order_page.dart';
import 'package:app_first/View/Pages/Search/search_page.dart';
import 'package:app_first/View/Pages/Setting/setting_page.dart';
import 'package:app_first/View/Pages/Wish/wish_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;
  final screen = [
    //  const HomePage(),
    const HomeScreen(),
    const WishListPage(),
    const OrderPage(),
    const SearchPage(),
    const SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: Colors.black,
          iconSize: 30,
          currentIndex: currentindex,
          onTap: (value) {
            currentindex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                //   color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                //  color: Colors.black,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                //   color: Colors.black,
              ),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                //  color: Colors.black,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                //  color: Colors.black,
              ),
              label: 'Setting',
            ),
          ]),
      body: screen[currentindex],
    );
  }
}
