import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

   const MyBottomNavigationBar({super.key, required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return FluidNavBar(
    
      icons: [
        FluidNavBarIcon(icon: Icons.home, backgroundColor: Colors.pink, extras: {'label': 'Inicio'}),
      
        FluidNavBarIcon(icon: Icons.apps_sharp, backgroundColor: Colors.pink, extras: {'label': 'Otra Página'}),
        FluidNavBarIcon(icon: Icons.shopping_cart_rounded, backgroundColor: Colors.pink, extras: {'label': 'Perfil'}),
        
        FluidNavBarIcon(icon: Icons.person, backgroundColor: Colors.pink, extras: {'label': 'Carrito'}),
      ],
      style: const FluidNavBarStyle(
        iconSelectedForegroundColor: Color.fromARGB(161, 255, 64, 128),
        iconUnselectedForegroundColor: Color.fromARGB(99, 255, 255, 255),
        barBackgroundColor: Color.fromARGB(180, 255, 0, 153),
        iconBackgroundColor: Colors.amber,

      ),
      scaleFactor: 1.5,
      defaultIndex: currentIndex,
      onChange: onTabTapped,
    );
  }
}