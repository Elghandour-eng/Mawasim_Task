import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import '../../../core/router/router.dart';
import '../../login_feature/login_view.dart';
import '../../services_features/view.dart';
import '../bloc/bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,[bool mounted = true]) {
    return BlocConsumer<SignUpBloc,SignIUpState>(
        listener: (context,state) {
          if(state is SignUpSuccess) {
            MagicRouter.navigateTo(const ServicesView() );
          } else if (state is SignUpFailure){
            MotionToast.error(
              title:const  Text("حدث خطا ما"),
              description:const  Text("تحقق من البريد الالكتروني و كلمة المرور"),
              layoutOrientation: ToastOrientation.ltr,
              animationType:AnimationType.fromRight,width:  300,height: 90.h,
            ).show(context);
          }
        },
        builder: (context,state) {
          return  AuthButton(
            onTab:  ()async {
              /// No Firebase Connection yet .
              //final String firebaseTokenId = await FCM().getToken() ?? '';
              if (!mounted) return;
              if (!SignUpBloc.get(context).formKey.currentState!.validate()) {
                return;
              }  else {
                if (!mounted) return;
                SignUpBloc.get(context).formKey.currentState!.save();
                context.read<SignUpBloc>().add(SignUpButtonPressed(
                  email:
                  SignUpBloc.get(context).identifyIdController.text.trim(),
                  password: SignUpBloc.get(context).passwordController.text.trim(),
                  confirmPassword: SignUpBloc.get(context).confirmPasswordController.text.trim(),
                  phone: SignUpBloc.get(context).phoneController.text.trim(),
                  name: SignUpBloc.get(context).passwordController.text.trim(),



                  deviceId: 'we',
                  firebaseToken: 'wewe',
                ));


              }
            },
            body1: 'لدي حساب بالفعل    ',
            body2: 'تسجيل دخول',
            text: 'تسجيل',
            route:const LoginView(),
            isLoading: state is SignUpLoadingProgress?true : false,
          );
        }
    );
  }
}
