
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/color_manager/color_manager.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  final void Function()? function;
  final String? text;
  final double? width;
  final Color colorBtn;
  final double? borderRadius;
  final double? height;
  final bool isLoading;

  const CustomButton(
      {Key? key,
        this.height,
        this.borderRadius,
        required this.function,
        required this.text,
        this.width,
        this.isLoading = false,
        this.colorBtn = ColorManager.textColor2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
          width: width,
          height: height ?? 47.h,
          decoration: BoxDecoration(
            color: colorBtn,
            borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
          ),
          child: Center(
              child: isLoading
                  ? const CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.white))
                  : CustomText(
                text: text??'',
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ))),
    );
  }
}