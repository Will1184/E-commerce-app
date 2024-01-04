import 'package:flutter/material.dart';

class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key}) ;

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.apps,
              size: 40,
            ),
            SizedBox(width: 10.0),
            Text(
              'Categoria',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
        
          Expanded(
            child: Center(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(20.0),
                childAspectRatio: 1.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  CustomButton(
                    icon: Icons.image,
                    text: 'Botón 1',
                    onPressed: () {
                      // Acción al presionar el botón
                    },

                    
                  ),
                  CustomButton(
                    icon: Icons.image,
                    text: 'Botón 2',
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                  ),
                  CustomButton(
                    icon: Icons.image,
                    text: 'Botón 3',
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                  ),
                  CustomButton(
                    icon: Icons.image,
                    text: 'Botón 4',
                    onPressed: () {
                      // Acción al presionar el botón
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
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.black,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            const SizedBox(height: 10.0),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}