import 'package:flutter/material.dart';
import 'package:store_api_app/screens/setting_page/setting_screene.dart';

import '../add_product_page/add_product_page.dart';
import '../home_page/home_page.dart';
import '../update_product_page/update_product_page.dart';


class MainPage extends StatefulWidget {
  static String id='MainPage';

  const MainPage({super.key});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const SettingScreen(),
    const HomePage(),
    const AddProductPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: 'Add',
          ),
        ],
      ),
    );
  }
}

