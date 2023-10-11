import 'package:e_commerce/config/services/auth_service.dart';
import 'package:e_commerce/navigations/Tabbar.dart';
import 'package:e_commerce/screens/email/widgets/Screen_Email.dart';
import 'package:e_commerce/screens/password/Screen_Password.dart';
import 'package:flutter/material.dart';

class ScreenProfileUsername extends StatefulWidget {
  const ScreenProfileUsername({super.key});

  @override
  State<ScreenProfileUsername> createState() => _ScreenProfileUsernameState();
}

class _ScreenProfileUsernameState extends State<ScreenProfileUsername> {

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    String username = authService.getEmail() ?? "Email";

    PreferredSizeWidget appBar = AppBar(
      backgroundColor:const Color.fromARGB(216, 107, 45, 117),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
         const Icon(
            Icons.person_rounded,
            color: Color.fromARGB(199, 255, 255, 255),
            size: 50.0,
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
           username,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
      toolbarHeight: 80,
    );

//filledButton Widget
    Widget filledButtonFun(String value,Widget widget) {
      return FilledButton.tonal(
        onPressed: () {
           Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => widget));
        },
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0))),
            textStyle:
                const MaterialStatePropertyAll(TextStyle(fontSize: 20.0))),
        child: Text(value),
      );
    }

    Widget elevatedButtonFun(String value) {
      return ElevatedButton(
        onPressed: () async {
          await authService.logout();
          if (mounted) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Tabbar()));
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            )),
            textStyle:
                const MaterialStatePropertyAll(TextStyle(fontSize: 20.0)),
            fixedSize: const MaterialStatePropertyAll(Size(300, 50))),
        child: Text(value),
      );
    }

    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          filledButtonTheme: const FilledButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(206, 230, 230, 230)),
              fixedSize: MaterialStatePropertyAll(Size(300, 100)),
              elevation: MaterialStatePropertyAll(2),
            ),
          ),
          useMaterial3: true),
      title: 'Username',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar,
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              filledButtonFun("Change Email",const ScreenEmail()),
              const SizedBox(
                height: 30,
              ),
              filledButtonFun("Change Password",const ScreenChangePassword()),
              const SizedBox(
                height: 30,
              ),
              filledButtonFun("Change Photo",const Tabbar()),
              const SizedBox(
                height: 125,
              ),
              elevatedButtonFun("LOG OUT"),
            ],
          ),
        ),
      ),
    );
    
  }
}
