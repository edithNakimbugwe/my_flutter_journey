import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedButtonController>(
      init: AnimatedButtonController(),
      builder: (_) {
        return GestureDetector(
          onTap: () {
            _.changeButtonState();
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: _.buttonSize.value,
            height: _.buttonSize.value,
            decoration: BoxDecoration(
              color: _.buttonColor.value,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Center(
              child: Text(
                'Tap me!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AnimatedButtonController extends GetxController {
  var buttonColor = Colors.blue.obs;
  var buttonSize = 100.0.obs;

  void changeButtonState() {
    buttonColor.value =
        buttonColor.value == Colors.blue ? Colors.red : Colors.blue;
    buttonSize.value = buttonSize.value == 100.0 ? 120.0 : 100.0;
  }
}
