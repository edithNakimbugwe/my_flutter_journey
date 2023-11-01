import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_1/widgets/text_wgt.dart';
import 'package:pro_1/views/login_view.dart';

import '../widgets/buttonWgts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyButtonWidget(
          text: MyTextWidget(
            text: 'Login',
            isHeading: true,
            colors: Colors.black,
          ),
          function: () {
            Get.to(() => const LoginPage());
          },
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
