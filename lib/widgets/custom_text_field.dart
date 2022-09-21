import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  String? title;
  String? hintText;
  var onSaved;
  var validate;
  var prefixIcon;
  bool obscure;
  final Widget? suffixIcon;
  final double? borderRadius;
  final Color? filledColor;
  final double? hPadding;
  final TextDirection? textDirection;

  final TextEditingController? controller;

  CustomTextField(
      {Key? key,
      this.textDirection,
      this.suffixIcon,
      this.filledColor,
      this.borderRadius,
      this.hPadding,
      this.hintText,
      this.title,
      this.onSaved,
      this.validate,
      this.obscure = false,
      this.controller,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: hPadding ?? 8.0),
          child: Directionality(
            textDirection: textDirection ?? TextDirection.rtl,
            child: SizedBox(
              height: 50,
              child: TextFormField(
                obscureText: obscure,
                controller: controller,
                onSaved: onSaved,
                validator: validate,
                autofocus: false,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    hintText: hintText ?? "",
                    hintStyle: const TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    labelStyle: const TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    prefixIcon: prefixIcon,
                    suffixIcon: suffixIcon,
                    errorStyle: const TextStyle(fontSize: 15, height: 1.5),
                    filled: true,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    fillColor: filledColor ?? Colors.grey[200],
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide.none),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
                        borderSide: BorderSide.none)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
