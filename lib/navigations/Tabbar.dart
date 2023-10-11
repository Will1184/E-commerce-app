<<<<<<< HEAD
import 'package:e_commerce/screens/categories/categories_screen.dart';
import 'package:e_commerce/screens/profile/Screen_Profile_Login.dart';
=======
import 'package:e_commerce/screens/profile/Screen_Profile.dart';
import 'package:e_commerce/screens/screen_categories.dart';
>>>>>>> f381b94aa23eb9fa1b791183711129edcfe86f86
import 'package:e_commerce/screens/home/screenhomewidgets.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});
  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  Widget? _child;
  @override
  void initState() {
    _child = const ScreenHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor:const Color.fromARGB(216, 107, 45, 117),
              extras: {'label': 'Inicio'}),
          FluidNavBarIcon(
              icon: Icons.apps_sharp,
              backgroundColor:const Color.fromARGB(216, 107, 45, 117),
              extras: {'label': 'Otra Página'}),
          FluidNavBarIcon(
              icon: Icons.shopping_cart_rounded,
              backgroundColor:const Color.fromARGB(216, 107, 45, 117),
              extras: {'label': 'Perfil'}),
          FluidNavBarIcon(
              icon: Icons.person,
              backgroundColor: const Color.fromARGB(216, 107, 45, 117),
              extras: {'label': 'Carrito'}),
        ],
        style: const FluidNavBarStyle(

          iconSelectedForegroundColor:Color.fromARGB(255, 225,190, 231),
          iconUnselectedForegroundColor: Color.fromARGB(255, 225,190, 231),
          barBackgroundColor: Color.fromARGB(216, 107, 45, 117),
          iconBackgroundColor: Colors.transparent,
          
        ),
        scaleFactor: 1.5,
        defaultIndex: 0,
        onChange: _handleNavigationChange,
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = const ScreenHome();
        case 1:
          _child = const ScreenCategories();
          break;
        case 2:
          _child = const ScreenCategories();
          break;
        case 3:
          _child = const ScreenProfile();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeInOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 600),
        child: _child,
      );
    });
  }
}
