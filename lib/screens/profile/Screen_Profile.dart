import 'package:e_commerce/config/services/auth_service.dart';
import 'package:e_commerce/screens/profile/Screen_Profile_Login.dart';
import 'package:e_commerce/screens/profile/Screen_username.dart';
import 'package:flutter/material.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: authService.isSignedIn(const ScreenProfileUsername(), const ScreenProfileLogin()),
    );
  }
}