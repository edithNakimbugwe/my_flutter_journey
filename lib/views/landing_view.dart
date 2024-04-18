import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_1/views/SignUp.dart';
import 'package:pro_1/views/login1_view.dart';
import '../widgets/text_wgt.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 500,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(const LoginPage());
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                      ),
                      child: MyTextWidget(
                        text: 'Login',
                        isHeading: true,
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(const SignUpPage());
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: MyTextWidget(
                        text: 'SignUp',
                        isHeading: true,
                        colors: Colors.white,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
