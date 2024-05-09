
import 'package:car_rental/constant.dart';

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  int currentIndex;
  BottomNavBar(this.currentIndex);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();

}

class _BottomNavBarState extends State<BottomNavBar> {
  // int _currentIndex = 0;

  

  void onTapTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      //body: _children[widget.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: widget.currentIndex,
        elevation: kLess,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kLightColor,
        backgroundColor: kWhiteColor,
        // showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            //title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            //title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
           // title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
