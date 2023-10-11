import 'package:e_commerce/screens/login/Screen_Login.dart';
import 'package:e_commerce/screens/signUp/Screen_Sign_Up.dart';
import 'package:flutter/material.dart';
class ScreenProfileLogin extends StatelessWidget {
 const ScreenProfileLogin({super.key});
 @override
 Widget build(BuildContext context) {
 // Obtiene las dimensiones de la pantalla
 final screenHeight = MediaQuery.of(context).size.height;
 final screenWidth = MediaQuery.of(context).size.width;
 return Scaffold(
 appBar: AppBar(
 leading: IconButton(
 icon: const Icon(
 Icons.person,
 size: 50,
 color: Color.fromARGB(255, 225, 190, 231),
 ),
 onPressed: () {},
 ),
 title: const Align(
 alignment: Alignment.bottomLeft,
 child: Text(
 "Log in",
 style: TextStyle(color: Color.fromARGB(255, 225, 190, 231)),
 ),
 ),
 backgroundColor: const Color.fromARGB(216, 107, 45, 117),
 ),
 body: Padding(
 padding: const EdgeInsets.all(20.0),
 child: Column(
 crossAxisAlignment:
 CrossAxisAlignment.center, // Alinea a la izquierda
 children: [
 SizedBox(
 height: screenHeight * 0.04), // Espacio en la parte superior
 // Cuadro de imagen con esquinas semi circulares
 ClipRRect(
 borderRadius: BorderRadius.circular(20.0),
 child: Container(
 width: screenWidth * 0.7, // Usa un ancho relativo a la pantalla
 height: screenWidth * 0.7, // Hace que sea cuadrada
 color: Colors.grey, // Color gris de fondo
 child: Center(
 /* child: Image.asset(
 '/image/foto.png',
 fit: BoxFit.cover, // Ajusta la imagen al cuadro
 ), */
 // Puedes reemplazar 'assets/profile_image.png' con la ruta de tu imagen por defecto.
 ),
 ),
 ),
 SizedBox(height: 100),
 // Botón "Log In"
 ElevatedButton(
 onPressed: () {
 // Lógica para iniciar sesión
 Navigator.push(
 context,MaterialPageRoute(builder: (context) => const ScreenLogin())
 );
 },
 style: ElevatedButton.styleFrom(
  minimumSize: const Size(double.infinity, 50.0), // Ancho máximo
  shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))
                              ),
 child: const Text(
 'Log In',
 style: TextStyle(fontSize: 20.0 ),
 ),
 ),
 SizedBox(height: 20.0),
 // Texto "¿No tienes una cuenta?"
 Text(
 '¿You do not have an account?',
 style: const TextStyle(fontSize: 16.0),
 ),
 // Enlace para ir a la página de registro
 TextButton(
 onPressed: () {
 // Navegar a la página de registro
 Navigator.push(
 context,MaterialPageRoute(builder: (context) => const ScreenSignUp())
 );
 },
 child: const Text(
 'Sign Up',
 style: TextStyle(
 fontSize: 18.0,
 ),
 ),
 ),
 ],
 ),
 ),
 );
 }
}