import 'package:get/get.dart';
import 'package:pro_1/services/firebase_service.dart';

class LogOutController extends GetxController {
  final AuthController _authController = Get.find();

  void logout() {
    _authController.logOutUser();
  }
}
