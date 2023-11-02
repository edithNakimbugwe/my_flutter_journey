import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyControllers extends GetxController {
  final eControl = TextEditingController();
  final pControl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
}
