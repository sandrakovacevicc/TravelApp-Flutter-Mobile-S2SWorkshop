import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:s2s_radionica/utils/global_colors.dart';

class GlobalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double fontSize;
  final Color? textColor;
  final Color? backgroundColor;
  final double width;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  const GlobalButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.fontSize = 15,
      this.textColor,
      this.backgroundColor,
      required this.width,
      this.borderRadius = 30,
      this.padding = const EdgeInsets.symmetric(vertical: 15)});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? GlobalColors.darkGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
        ),
        child: AutoSizeText(
          minFontSize: 10,
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: textColor ?? GlobalColors.white,
          ),
        ),
      ),
    );
  }
}
