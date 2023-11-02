import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_1/views/signup_page.dart';
import 'package:pro_1/widgets/text_wgt.dart';
import '../controllers/all_controllers.dart';
import '../widgets/buttonWgts.dart';
import '../widgets/textFormField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final MyControllers controller = Get.put(MyControllers());
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
                        key: controller.formKey,
                        child: Center(
                          child: Column(
                            children: [
                              MyTextFormFieldWidget(
                                  validation: controller.validateEmail,
                                  text: MyTextWidget(text: 'Email'),
                                  control: controller.eControl,
                                  hint: 'fungfang@gmail.com'),
                              const SizedBox(
                                height: 20,
                              ),
                              MyTextFormFieldWidget(
                                validation: controller.validatePassword,
                                text: MyTextWidget(text: 'Password'),
                                control: controller.pControl,
                                hint: '****************',
                                isPassword: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              MyButtonWidget(
                                text: MyTextWidget(
                                  text: 'Login',
                                  isHeading: true,
                                  colors: Colors.amber,
                                ),
                                function: () {
                                  if (controller.formKey.currentState!
                                      .validate()) {
                                    Get.offAll(() => const SignUpPage());
                                    Get.snackbar(
                                      'Great!',
                                      'your login was successful......',
                                      snackPosition: SnackPosition.TOP,
                                      isDismissible: true,
                                      dismissDirection:
                                          DismissDirection.horizontal,
                                      duration: const Duration(seconds: 3),
                                      colorText: Colors.black,
                                      backgroundColor: Colors.amber,
                                    );
                                  }
                                },
                                color: Colors.black,
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
                              MyButtonWidget(
                                text: MyTextWidget(
                                  text: 'SignUp',
                                  isHeading: true,
                                  colors: Colors.black,
                                ),
                                function: () {
                                  Get.offAll(() => const SignUpPage());
                                },
                                color: Colors.amber,
                              ),
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
