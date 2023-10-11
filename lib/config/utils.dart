class Utils {
  String? validateUsername(String username) {
    final RegExp regex = RegExp(r'^[a-zA-Z0-9_]{3,}$');
    if (username.length < 3) {
      return "Nombre de usuario debe ser mayor a 3";
    }
    if (!regex.hasMatch(username)) {
      return "Nombre de usuario no valido";
    }
    return null;
  }

  String? validatePasswordWithPassword(String password, String repeatPassword) {
    if (repeatPassword != password) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }

  String? validatePassword(String password) {
    final RegExp regexLowerCase = RegExp(r'^(?=.*?[a-z])');
    final RegExp regexUpperCase = RegExp(r'^(?=.*?[A-Z])');
    final RegExp regexNumber = RegExp(r'^(?=.*?[0-9])');
    final RegExp regexSpecial = RegExp(r'^(?=.*?[!@#\$&*~])');

    if (password.length < 8) {
      return "Contraseña debe ser mayor a 8 Digitos";
    }
    if (!regexLowerCase.hasMatch(password)) {
      return "Debe contener una letra Minuscula";
    }
    if (!regexUpperCase.hasMatch(password)) {
      return "Debe contener una letra Mayuscula";
    }
    if (!regexNumber.hasMatch(password)) {
      return "Debe contener un numero";
    }
    if (!regexSpecial.hasMatch(password)) {
      return "Debe contener letras especiales";
    }
    return null;
  }

  String? validateEmail(String email) {
    final RegExp regex =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    if (!regex.hasMatch(email)) {
      return "Ingrese Un Email Valido";
    }
    return null;
  }
}
