import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/utils.dart';
import 'package:pro_1/controllers/logout_controllers.dart';
import 'package:pro_1/widgets/text_wgt.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final LogOutController logoutController = Get.put(LogOutController());

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyTextWidget(
            text: "welcome Guys!",
          ),
          ElevatedButton(
              onPressed: () {
                logoutController.logout();
              },
              child: MyTextWidget(text: 'Logout'))
        ],
      )),
    );
  }
}
