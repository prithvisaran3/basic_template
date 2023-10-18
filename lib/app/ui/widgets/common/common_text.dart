import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/font_size.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {Key? key,
      required this.text,
      this.fontSize = 16,
      this.fontColor = AppColors.black,
      this.fontWeight,
      this.letterSpacing,
      this.textAlign,
      this.foreground,
      this.isForeground, required this.style})
      : super(key: key);
  final String text;
  final TextStyle style;
  final double fontSize;
  final double? letterSpacing;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Paint? foreground;
  final bool? isForeground;

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      textAlign: textAlign,
      style: style
    );
  }
}
