import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_1/services/firebase_service.dart';

class LoginController extends GetxController {
  final AuthController _authController = Get.find();

  final emailControl = TextEditingController();
  final passwordControl = TextEditingController();

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String? validateEmail(String? email) {
    if (email == '' || email == null) {
      return 'Email Address required';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == '' || password == null) {
      return 'password required';
    }
    return null;
  }

  void login() {
    String email = emailControl.text.trim();
    String password = passwordControl.text.trim();
    _authController.logInUser(email, password);
  }
}
