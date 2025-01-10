import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:s2s_radionica/utils/global_text_style.dart';

class CustomAutoSizeText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double minFontSize;
  final int maxLines;

  const CustomAutoSizeText({
    super.key,
    required this.text,
    this.style,
    this.minFontSize = 10,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: style ?? GlobalTextStyles.bodyStyle,
      minFontSize: minFontSize,
      maxLines: maxLines,
      textAlign: TextAlign.justify, 
    );
  }
}
