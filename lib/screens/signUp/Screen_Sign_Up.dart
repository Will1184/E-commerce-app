import 'package:e_commerce/config/services/auth_service.dart';
import 'package:e_commerce/config/utils.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/screens/login/Screen_Login.dart';
import 'package:flutter/material.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenSignUp> {
  final AuthService _authService = AuthService();
  Utils utils = Utils();
  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;
  FocusNode fieldRepeatPassword = FocusNode();
  FocusNode fieldEmail = FocusNode();
  FocusNode fieldPassword = FocusNode();
  FocusNode buttonFocus = FocusNode();
  final TextEditingController _repeatPasswordfieldController =
      TextEditingController();
  final TextEditingController _passwordfieldController =
      TextEditingController();
  final TextEditingController _emailfieldController = TextEditingController();

  void _submit() async {
    if (_formKey.currentState!.validate()) {
          final response = await _authService.signUpHandlerEmail(context,
          _emailfieldController.text, _passwordfieldController.text);
      if (response) {
        _repeatPasswordfieldController.clear();
        _passwordfieldController.clear();
        _emailfieldController.clear();
        _formKey.currentState!.deactivate();
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const MyApp()),(Route<dynamic> route) => false,);
      }
    }
  }  

  @override
  Widget build(BuildContext context) {
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
            "Sign Up",
            style: TextStyle(color: Color.fromARGB(255, 225, 190, 231)),
          ),
        ),
        backgroundColor: const Color.fromARGB(216, 107, 45, 117),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(216, 107, 45, 117), size: 40),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 200.0, bottom: 0.0, right: 50.0, left: 50.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textForm(
                      "Ingrese Email",
                      const Color.fromARGB(255, 148, 131, 131),
                      16.0,
                      "Ingrese su Email",
                      const Color.fromARGB(255, 158, 158, 158),
                      context,
                      icon: const Icon(Icons.email,
                          color: Color.fromARGB(216, 107, 45, 117)),
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8.0),
                      filled: true,
                      colorsFill: const Color.fromARGB(255, 248, 237, 250),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "No puede dejar este campo vacio";
                        }
                        return utils.validateEmail(value);
                      },
                      focusNode: fieldEmail,
                      textEditingController: _emailfieldController,
                      onfieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(fieldPassword);
                      }),
                  const SizedBox(
                    height: 16.0,
                  ),
                  textForm(
                      "Ingrese Contraseña",
                      const Color.fromARGB(255, 141, 140, 140),
                      16.0,
                      "Ingrese su Contraseña",
                      Colors.grey,
                      context,
                      icon: const Icon(Icons.lock,
                          color: Color.fromARGB(216, 107, 45, 117)),
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8.0),
                      filled: true,
                      colorsFill: const Color.fromARGB(255, 248, 237, 250),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "No puede dejar este campo vacio";
                        }
                        return utils.validatePassword(value);
                      },
                      suffixInkwell: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(
                            passToggle
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color.fromARGB(216, 107, 45, 117)),
                      ),
                      isPassword: passToggle,
                      focusNode: fieldPassword,
                      textAction: TextInputAction.done,
                      textEditingController: _passwordfieldController,
                      onfieldSubmitted: (value) {
                        FocusScope.of(context)
                            .requestFocus(fieldRepeatPassword);
                      }),
                  const SizedBox(
                    height: 16.0,
                  ),
                  textForm(
                      "Repita Contraseña",
                      const Color.fromARGB(255, 141, 140, 140),
                      16.0,
                      "Repita su Contraseña",
                      const Color.fromARGB(255, 121, 120, 120),
                      context,
                      icon: const Icon(Icons.lock,
                          color: Color.fromARGB(216, 107, 45, 117)),
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8.0),
                      filled: true,
                      colorsFill: const Color.fromARGB(255, 248, 237, 250),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "No puede dejar este campo vacio";
                        }
                        return utils.validatePasswordWithPassword(
                            _passwordfieldController.text, value);
                      },
                      suffixInkwell: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(
                            passToggle
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color.fromARGB(216, 107, 45, 117)),
                      ),
                      isPassword: passToggle,
                      focusNode: fieldRepeatPassword,
                      textEditingController: _repeatPasswordfieldController,
                      onfieldSubmitted: (value) {
                        _submit();
                      }),
                  const SizedBox(height: 30.0),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                      focusNode: buttonFocus,
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(280.0, 50.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      onPressed: () {
                        _submit();
                      },
                      label: const Text("Sign Up")),
                  const SizedBox(
                    height: 16.0,
                  ),
                  ElevatedButton.icon(
                      icon: Image.asset('assets/images/google-icon.png',
                          width: 20),
                      focusNode: buttonFocus,
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(280.0, 50.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      onPressed: () async {
                        await _authService.signInHandler();
                        if (mounted) {                        
                                  Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (_) => const MyApp()));                               
                        }
                      },
                      label: const Text("Sign In With Google")),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(" Already have an account?"),
                  TextButton(
                    onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const MyApp()),(Route<dynamic> route) => false,);
                    },
                    child: const Text("Log In"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

TextFormField textForm(
  String labelText,
  Color colorsLabel,
  double fontSize,
  String hint,
  Color colorsHint,
  BuildContext context, {
  Icon? icon,
  FontStyle fontStyle = FontStyle.normal,
  BorderSide borderSide = const BorderSide(color: Colors.black),
  BorderRadius borderRadius = BorderRadius.zero,
  bool filled = false,
  Color colorsFill = Colors.white,
  bool isPassword = false,
  TextInputType textInputType = TextInputType.text,
  String? Function(String?)? validator,
  void Function(String)? onfieldSubmitted,
  TextInputAction? textAction,
  InkWell? suffixInkwell,
  FocusNode? focusNode,
  TextEditingController? textEditingController,
}) {
  return TextFormField(
    obscureText: isPassword,
    validator: validator,
    keyboardType: textInputType,
    focusNode: focusNode,
    controller: textEditingController,
    textInputAction: textAction,
    onFieldSubmitted: onfieldSubmitted,
    decoration: InputDecoration(
      suffix: suffixInkwell,
      prefixIcon: icon,
      labelText: labelText,
      labelStyle: TextStyle(
        color: colorsLabel,
        fontSize: fontSize,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: borderSide,
        borderRadius: borderRadius,
      ),
      filled: filled,
      fillColor: colorsFill,
    ),
  );
}
