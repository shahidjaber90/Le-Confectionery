import 'package:flutter/material.dart';
import 'package:le_confectionery/Utils/Color.dart';

// ignore: must_be_immutable
class BoardingButton extends StatelessWidget {
  Widget child;
  double height;
  double width;
  void Function()? onTap;
  BoardingButton({
    super.key,
    required this.child,
    required this.height,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorConstant.brownColor,
        ),
        child: child,
      ),
    );
  }
}
