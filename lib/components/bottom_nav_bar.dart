import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomBar extends StatelessWidget {
  void Function(int)? onTabChange;

   MyBottomBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),

        mainAxisAlignment: MainAxisAlignment.center,
          gap: 10,
          tabBackgroundColor: Colors.black12,
          activeColor: Colors.white,
          color: Colors.grey.shade300,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: [
        GButton(icon: Icons.home,text: 'Shop',),
        GButton(icon: Icons.shopping_cart,text: 'Cart',)
      ]),
    );
  }
}
