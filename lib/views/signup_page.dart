import 'package:flutter/material.dart';
import 'package:pro_1/widgets/text_wgt.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MyTextWidget(
        text: "welcome Guys!",
      )),
    );
  }
}
