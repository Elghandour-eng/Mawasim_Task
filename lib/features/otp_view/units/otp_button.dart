import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/router/router.dart';
import 'package:mawasim_task/features/get_services_feature/get_services_view_page.dart';
import 'package:mawasim_task/features/login_feature/login_view.dart';
import 'package:mawasim_task/features/sign_up_feature/bloc/bloc.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';


class OtpButton extends StatelessWidget {
  const OtpButton({
    Key? key,
    required this.email,
    required this.isPhone,
  }) : super(key: key);

  final String? email;
  final bool? isPhone;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc,SignIUpState>(
        listener: (context,state){
          if(state is ActivateCodeSuccess) {
            MagicRouter.navigateAndPopAll(const ServicesViewPage());
          } else if (state is ActivateCodeFailure) {
            MotionToast.error(
              title:const  Text("حدث خطا ما"),
              description:const  Text("تحقق من كود التفعيل"),
              layoutOrientation: ToastOrientation.ltr,
              animationType:AnimationType.fromRight,width:  300,height: 90.h,
            ).show(context);
          }
        },
        builder: (context,state) {
          return AuthButton(
            text: "تأكيد",
            body2: '',
            showBottom: true,
            body1: 'اعادة المحاوله',
            onTab: () {
              SignUpBloc.get(context).otpController.text.isNotEmpty?
              SignUpBloc.get(context).add(ActivationCode(
                  email: email ?? '',
                  type: isPhone ?? false ? "phone" : "email",
                  code: SignUpBloc.get(context).otpController.text)):null;
            },
          );
        }
    );
  }
}
