import 'package:flutter/material.dart';

import 'package:masterui/screens/featured_screen.dart';

import '../constants/color.dart';
import '../constants/size.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}


class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              activeIcon: Image.asset("assets/icons/star.png",
                height: kBottomNavigationBarItemSize,
              ),
            icon: Image.asset("assets/icons/star_outlined.png",
            height: kBottomNavigationBarItemSize,),
            label: "Featured"
          ),
          BottomNavigationBarItem(
              activeIcon: Image.asset("assets/icons/play.png",
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset("assets/icons/play_outlined.png",
                height: kBottomNavigationBarItemSize,),
              label: "My Learning"
          ),
          BottomNavigationBarItem(
              activeIcon: Image.asset("assets/icons/heart.png",
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset("assets/icons/heart_outlined.png",
                height: kBottomNavigationBarItemSize,),
              label: "Wishlist"
          ),
          BottomNavigationBarItem(
              activeIcon: Image.asset("assets/icons/settings.png",
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset("assets/icons/settings_outlined.png",
                height: kBottomNavigationBarItemSize,),
              label: "Settings"
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState((){
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
