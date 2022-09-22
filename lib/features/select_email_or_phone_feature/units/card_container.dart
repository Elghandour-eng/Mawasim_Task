import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/router/router.dart';
import 'package:mawasim_task/features/otp_view/units/view.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import '../../../core/app_images/app_images.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../widgets/custom_text_widget.dart';
import '../../sign_up_feature/bloc/bloc.dart';

Widget sendCodeContainer(
    {BuildContext? context,
    String? text1,
    String? text2,
    String? image,
    bool? phone,
    String? email,
    void Function()? onTap}) {
  return  BlocConsumer<SignUpBloc,SignIUpState>(
  listener: (context,state){
    if(state is CodeSendFailure) {
      MotionToast.error(
        title:const  Text("حدث خطا ما"),
        description:const  Text("يرجي المحاوله مره اخري"),
        layoutOrientation: ToastOrientation.ltr,
        animationType:AnimationType.fromRight,width:  300,height: 90.h,
      ).show(context);
    }
    else if(state is CodeSendSuccess){
      ///Router
      MagicRouter.navigateTo( OtpView(email:email??'' ,isPhone:phone ,));
    }
  },

  builder:(context,state)=> GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        height: 90.h,
        width: .9.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: Colors.green.shade100.withOpacity(.2),
            border: Border.all(color: ColorManager.textColor2)),
        child:state is SignUpLoadingProgress?
        const Center(child: CircularProgressIndicator.adaptive( )):
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: .7.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      CustomText(
                        text: text1 ?? 'رقم الجوال',
                        textStyle: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: text2 ?? 'رجاء ادخال رقم الجوال لارسال كود التحقق',
                  fontWeight: FontWeight.w200,
                  fontSize: 13.sp,
                  color: Colors.grey,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                image ?? AppImages.mobileIcon,
                height: 60,
                width: 40,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
