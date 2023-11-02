import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_1/views/login1_view.dart';
import 'package:pro_1/views/signup_page.dart';
import '../widgets/buttonWgts.dart';
import '../widgets/text_wgt.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/wall2.jpg'),
          fit: BoxFit.cover,
        )),
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 600,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyButtonWidget(
                    text: MyTextWidget(
                      text: 'Login',
                      isHeading: true,
                      colors: Colors.black,
                    ),
                    function: () {
                      Get.to(() => const HomePage());
                    },
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyButtonWidget(
                    text: MyTextWidget(
                      text: 'SignUp',
                      isHeading: true,
                      colors: Colors.white,
                    ),
                    function: () {
                      Get.to(() => const SignUpPage());
                    },
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
