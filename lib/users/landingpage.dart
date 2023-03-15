// ignore_for_file: use_key_in_widget_constructors, camel_case_types, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoonline/constans.dart';
import 'package:tokoonline/users/accountpage.dart';
import 'package:tokoonline/users/cartpage.dart';
import 'package:tokoonline/users/favoritepage.dart';
import 'package:tokoonline/users/homepage.dart';
import 'package:tokoonline/users/transactionpage.dart';

class landingpage extends StatefulWidget {
  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> container = [
    new homepage(),
    new favoritepage(),
    new cartpage(),
    new transactionpage(),
    new accountpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.swap_horiz_sharp,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.swap_horiz_sharp,
              color: Colors.grey,
            ),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
