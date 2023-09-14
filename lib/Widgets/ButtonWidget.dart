import 'package:flutter/material.dart';
import 'package:le_confectionery/Utils/Color.dart';
import 'package:le_confectionery/Widgets/MyText.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String buttonText;
  void Function()? onTap;
  ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 20),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ColorConstant.buttonColor,
        ),
        child: MyText(
          myText: buttonText,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          textColor: ColorConstant.blackColor,
          letterspace: 0.5,
        ),
      ),
    );
  }
}
