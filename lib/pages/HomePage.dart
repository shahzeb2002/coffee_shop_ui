import 'package:coffee/components/bottom_nav_bar.dart';
import 'package:coffee/pages/ShopPage.dart';
import 'package:coffee/pages/cart_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //bottom nav bar
  int _selectedIndex=0;
  void navigateBottomBar(int newIndex){
    setState(() {
      _selectedIndex=newIndex;
    });
  }
  //pages
  final List<Widget> _pages=[
    ShopPage(),
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100 ,



      bottomNavigationBar: MyBottomBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
