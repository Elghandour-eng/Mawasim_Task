import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color_manager/color_manager.dart';

const String baseUrl='https://mawasims.com.sa/api/';
 TextTheme textTheme=TextTheme(
  headline1: TextStyle(
      fontSize: 16.sp,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      color: ColorManager.textColor1,
      fontFamily: 'Tajawal'),
  headline4: TextStyle(
      fontSize: 13.sp,
      //fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      color: ColorManager.textColor2,
      decoration: TextDecoration.underline,
      fontFamily: 'Tajawal'),
  headline5: TextStyle(
      fontSize: 13.sp,
      //fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      color: ColorManager.textColor1,
      decoration: TextDecoration.underline,
      fontFamily: 'Tajawal'),
  headline3: TextStyle(
      fontSize: 16.sp,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      color: ColorManager.textColor2,
      fontFamily: 'Tajawal'),
  headline2: TextStyle(
    fontSize: 14.0.sp,
    fontFamily: 'Tajawal',
    color: ColorManager.textColor2,
  ),
) ;

