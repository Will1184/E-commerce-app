import 'package:e_commerce/screens/categories/categories_screen.dart';
import 'package:e_commerce/screens/profile/Screen_Profile_Login.dart';
import 'package:e_commerce/screens/home/screenhomewidgets.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});
  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index){
          setState(() {
            _selectedTab=index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,size: 40,),
          label:"Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_outlined,size: 40,),
            label:"Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,size: 40,),
            label:"Shopping Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,size: 40,),
            label:"Profile",
          ),

        ],
      ),
      body:  Stack(
        children: [
         renderView(
           0,
           const ScreenHome(),),
          renderView(
            1,
            const ScreenCategories(),),
          renderView(
            2,
            const ScreenCategories(),),
          renderView(
            3,
            const ScreenProfileLogin(),),
        ],
      ),
    );
  }
  Widget renderView(int tabIndex,Widget view){
    return  IgnorePointer(
      ignoring: _selectedTab !=tabIndex,
      child: Opacity(opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}