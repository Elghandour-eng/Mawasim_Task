import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/shared_bloc/obsecure/cubit.dart';
import 'package:mawasim_task/core/shared_bloc/obsecure/states.dart';

class CustomTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final void Function(String? v)? onSaved;
  final String? Function(String? v)? validate;
  final Widget? prefixIcon;
  final bool? obscure;
  final Widget? suffixIcon;
  final double? borderRadius;
  final Color? filledColor;
  final double? hPadding;
  final bool? isPassword;
  final TextInputType? textInputType;
  final TextDirection? textDirection;

  final TextEditingController? controller;

  const CustomTextField(
      {Key? key,
      this.textInputType,
      this.isPassword,
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
    return BlocProvider<ObSecureBloc>(
      create: (context) => ObSecureBloc(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: hPadding ?? 8.0),
            child: Directionality(
              textDirection: textDirection ?? TextDirection.rtl,
              child: SizedBox(
                height: 50.h,
                child: BlocConsumer<ObSecureBloc, ObSecure>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return TextFormField(
                        obscureText: isPassword ?? false
                            ? ObSecureBloc.get(context).secure
                            : obscure ?? false,
                        controller: controller,
                        keyboardType: textInputType,
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
                            suffixIcon: isPassword ?? false
                                ? ObSecureBloc.get(context).secure
                                    ? InkWell(
                                        onTap: () => ObSecureBloc.get(context)
                                            .changeSecure(),
                                        child: const Icon(Icons.visibility_off_outlined))
                                    : InkWell(
                                        onTap: () => ObSecureBloc.get(context).changeSecure(),
                                        child: const Icon(Icons.visibility_outlined))
                                : suffixIcon,
                            errorStyle:
                                const TextStyle(fontSize: 12, height: .5,fontFamily: 'Tajawal'),
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            fillColor: filledColor ?? Colors.grey[200],
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide:const BorderSide(color: Colors.grey)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius ?? 15.r),
                                borderSide: BorderSide.none)),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
