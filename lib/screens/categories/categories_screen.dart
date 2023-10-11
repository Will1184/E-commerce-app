import 'package:e_commerce/screens/categories/categories_screen_four.dart';
import 'package:e_commerce/screens/categories/categories_screen_one.dart';
import 'package:e_commerce/screens/categories/categories_screen_three.dart';
import 'package:e_commerce/screens/categories/categories_screen_two.dart';
import 'package:flutter/material.dart';

class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key}) ;

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.apps,
              size: 40,
            ),
            SizedBox(width: 10.0),
            Text(
              'Category',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[300],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar',
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                // Acción al cambiar el texto de búsqueda
              },
            ),
          ),
          Expanded(
            child: Center(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(20.0),
                childAspectRatio: 1.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  CustomButton(
                    imagePath: 'assets/images/20.jpeg',
                    text: 'Botón 1',
                    onPressed: () {
                      // Acción al presionar el botón
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoriesScreenOne()));
                    },
                  ),
                  CustomButton(
                    imagePath: 'assets/images/28.jpeg',
                    text: 'Botón 2',
                    onPressed: () {
                      // Acción al presionar el botón
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoriesScreenTwo()));
                    },
                  ),
                  CustomButton(
                    imagePath: 'assets/images/18.jpeg',
                    text: 'Botón 3',
                    onPressed: () {
                      // Acción al presionar el botón
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoriesScreenThree()));
                    },
                  ),
                  CustomButton(
                    imagePath: 'assets/images/34.jpeg',
                    text: 'Botón 4',
                    onPressed: () {
                      // Acción al presionar el botón
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoriesScreenFour()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.imagePath,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.white,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 1),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
