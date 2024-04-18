import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_1/controllers/login_controllers.dart';
import 'package:pro_1/views/SignUp.dart';
import 'package:pro_1/views/home_view.dart';
import 'package:pro_1/widgets/text_wgt.dart';
import '../widgets/textFormField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/yellowa.jpg'),
                  fit: BoxFit.cover),
            ),
            child: ListView(
              children: [
                Center(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    const Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Form(
                        key: loginController.loginFormKey,
                        child: Center(
                          child: Column(
                            children: [
                              MyTextFormFieldWidget(
                                  validation: loginController.validateEmail,
                                  text: MyTextWidget(text: 'Email'),
                                  control: loginController.emailControl,
                                  hint: 'fungfang@gmail.com'),
                              const SizedBox(
                                height: 20,
                              ),
                              MyTextFormFieldWidget(
                                validation: loginController.validatePassword,
                                text: MyTextWidget(text: 'Password'),
                                control: loginController.passwordControl,
                                hint: '****************',
                                isPassword: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amber)),
                                onPressed: () {
                                  if (loginController.loginFormKey.currentState!
                                      .validate()) {
                                    loginController.login();
                                  }
                                },
                                child: MyTextWidget(
                                  text: 'Login',
                                  isHeading: true,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              MyTextWidget(
                                text: 'OR',
                                isHeading: true,
                                colors: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.to(() => const SignUpPage());
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                  ),
                                  child: MyTextWidget(
                                    text: 'SignUp',
                                    isHeading: true,
                                    colors: Colors.white,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              MyTextWidget(
                                text: 'To create an account',
                                isHeading: true,
                                colors: Colors.white,
                              ),
                            ],
                          ),
                        ))
                  ],
                ))
              ],
            )));
  }
}
