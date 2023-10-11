import 'package:e_commerce/screens/email/bottons/my_bottom_naegation_bar.dart';
import 'package:e_commerce/screens/email/screens/EmailRegisterScreen.dart';
import 'package:flutter/material.dart';

class ScreenFormEmail extends StatefulWidget {
  const ScreenFormEmail({super.key});

  @override
  State<ScreenFormEmail> createState() => _ScreenFormEmail();
}

class _ScreenFormEmail extends State<ScreenFormEmail> {
  int _currentIndex = 0;
  bool _isRegisterScreenVisible = false;
  final RegisterScreen _registerScreen = const RegisterScreen();

  void _toggleRegistration() {
    setState(() {
      _isRegisterScreenVisible = !_isRegisterScreenVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: null,
      body:



      _isRegisterScreenVisible ? _registerScreen : buildMainContent(),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabTapped: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 3) {
            _toggleRegistration();
          }
        },
      ),




    );
  }

  Widget buildMainContent() {
    return const Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

            ],
          ),
        ),
        // Puedes agregar más contenido aquí
      ],
    );
  }
}





