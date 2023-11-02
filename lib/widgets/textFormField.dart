import 'package:flutter/material.dart';
import 'package:pro_1/widgets/text_wgt.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  MyTextFormFieldWidget(
      {super.key,
      required this.validation,
      required this.text,
      this.colors = Colors.black,
      this.isPassword = false,
      required this.control,
      required this.hint});

  final MyTextWidget text;
  bool isPassword;
  Color colors;
  final validation;
  final TextEditingController control;
  final hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
      child: TextFormField(
        validator: validation,
        obscureText: isPassword,
        controller: control,
        decoration: InputDecoration(
          label: text,
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          suffixIcon: isPassword
              ? IconButton(onPressed: () {}, icon: const Icon(Icons.visibility))
              : Container(
                  width: 0,
                ),
        ),
      ),
    );
  }
}
