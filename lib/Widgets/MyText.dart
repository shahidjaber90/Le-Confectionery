import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  String myText;
  double fontSize;
  FontWeight fontWeight;
  Color textColor;
  final textAlign;
  final letterspace;
  final lineHeight;
  MyText({
    super.key,
    required this.myText,
    required this.fontSize,
    required this.fontWeight,
    required this.textColor,
    this.textAlign,
    this.letterspace,
    this.lineHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      textAlign: textAlign,
      style: GoogleFonts.urbanist(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: letterspace,
        height: lineHeight,
      ),
    );
  }
}
