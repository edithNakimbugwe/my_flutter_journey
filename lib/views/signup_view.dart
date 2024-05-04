import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_1/controllers/signup_controllers.dart';
import 'package:pro_1/views/login1_view.dart';
import '../widgets/textformfield_widget.dart';
import '../widgets/text_wgt.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignUpControllers signUpControllers = Get.put(SignUpControllers());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: MyTextWidget(
          text: 'Create Account',
          isHeading: true,
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: signUpControllers.signUpFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyTextFormFieldWidget(
                    validation: signUpControllers.validateEmail,
                    text: MyTextWidget(text: 'Email Address'),
                    control: signUpControllers.emailControl,
                    hint: 'youremailaddress@any.com',
                  ),
                  const SizedBox(height: 10),
                  MyTextFormFieldWidget(
                    validation: signUpControllers.validatePassword,
                    text: MyTextWidget(text: 'Password'),
                    control: signUpControllers.passwordControl,
                    hint: '************',
                    isPassword: true,
                  ),
                  const SizedBox(height: 10),
                  MyTextFormFieldWidget(
                    validation: signUpControllers.validatePassword,
                    text: MyTextWidget(text: 'Confirm Password'),
                    control: signUpControllers.cPasswordControl,
                    hint: '************',
                    isPassword: true,
                  ),
                  const SizedBox(height: 10),
                  MyTextFormFieldWidget(
                    validation: signUpControllers.validateName,
                    text: MyTextWidget(text: 'First Name'),
                    control: signUpControllers.nameControl,
                    hint: 'Enter First Name',
                  ),
                  const SizedBox(height: 10),
                  MyTextFormFieldWidget(
                    validation: signUpControllers.validateName,
                    text: MyTextWidget(text: 'Last Name'),
                    control: signUpControllers.name2Control,
                    hint: 'Enter Last Name',
                  ),
                  const SizedBox(height: 10),
                  MyTextFormFieldWidget(
                    validation: signUpControllers.validateDate,
                    text: MyTextWidget(text: 'Date Of Birth'),
                    control: signUpControllers.dateControl,
                    hint: 'DD/MM/YYYY',
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (signUpControllers.signUpFormKey.currentState!
                          .validate()) {
                        signUpControllers.registerUser();
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.amber),
                    ),
                    child: const Text('CREATE ACCOUNT'),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text('Already Registered?'),
                      const SizedBox(height: 10),
                      TextButton(
                          onPressed: () {
                            Get.to(const LoginPage());
                          },
                          child: MyTextWidget(
                            text: 'Login',
                            colors: Colors.blue,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
