import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/color_manager/color_manager.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final double? height;
  final TextDirection? textDirection;
  final TextDecoration? underline;
  final TextStyle? textStyle;

  const CustomText(
      {Key? key,
      this.textDirection,
      this.height,
      this.align,
      required this.text,
      this.color = ColorManager.textColor1,
      this.fontSize,
      this.fontWeight = FontWeight.bold,
      this.underline,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      //textDirection: textDirection??TextDirection.RTL ,
      style: textStyle ??
          TextStyle(
              height: height,
              fontFamily: 'Tajawal',
              fontSize: fontSize ?? 15.sp,
              fontWeight: fontWeight ?? FontWeight.normal,
              color: color,
              decoration: underline??TextDecoration.none),
      maxLines: 4,
      textAlign: align ?? TextAlign.center,
      overflow: TextOverflow.clip,
    );
  }
}
