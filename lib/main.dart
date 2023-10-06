import 'package:e_commerce/firebase_options.dart';
import 'package:e_commerce/navigations/Tabbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(216, 107, 45, 117),
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 15,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 15,
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 225, 190, 231),
        ),
      ),
      home: const Tabbar(),
    );
  }
}
