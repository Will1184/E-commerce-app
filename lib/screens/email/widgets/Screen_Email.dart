import 'package:e_commerce/screens/email/widgets/Screen_Form_Email.dart';
import 'package:flutter/material.dart';
class ScreenEmail extends StatelessWidget {
  const ScreenEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenFormEmail(),
    );
  }
}


///como llamar todo la clase en el main  solo ya a la clase myAppp es la contiene la dirrecion de las demas clases//