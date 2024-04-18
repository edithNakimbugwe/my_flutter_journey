import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_1/services/firebase_service.dart';

class SignUpControllers extends GetxController {
  final AuthController _authController = Get.find();
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passwordControl = TextEditingController();
  final cPasswordControl = TextEditingController();
  final nameControl = TextEditingController();
  final name2Control = TextEditingController();
  final dateControl = TextEditingController();

  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

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

  String? validateName(String? name) {
    if (name == '' || name == null) {
      return 'Enter name';
    }
    return null;
  }

  String? validateDate(String? date) {
    if (date == '' || date == null) {
      return 'Date required';
    }
    return null;
  }

  void registerUser() {
    String email = emailControl.text.trim();
    String password = passwordControl.text.trim();
    _authController.signUpUser(email, password);
  }
}
