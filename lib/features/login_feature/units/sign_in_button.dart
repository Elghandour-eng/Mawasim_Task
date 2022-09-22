import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/features/get_services_feature/get_services_view_page.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import '../../../core/router/router.dart';
import '../bloc/bloc.dart';
import '../login_view.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,[bool mounted = true]) {
    return BlocConsumer<SignInBloc,SignInState>(
        listener: (context,state){
          if(state is SignInSuccess) {
            MagicRouter.navigateTo(const ServicesViewPage());
            SignInBloc.get(context).identifyIdController.clear();
            SignInBloc.get(context).passwordController.clear();


          } else if (state is SignInFailure){
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
              if (!SignInBloc.get(context).formKey.currentState!.validate()) {
                return;
              }  else {
                if (!mounted) return;
                SignInBloc.get(context).formKey.currentState!.save();
                context.read<SignInBloc>().add(SignInButtonPressed(
                    email:
                    SignInBloc.get(context).identifyIdController.text.trim(),
                    password: SignInBloc.get(context).passwordController.text.trim(),
                    deviceId: 'we',
                    firebaseToken: 'wewe'
                ));


              }
            },
            isLoading: state is SignInLoadingProgress?true:false,
          );
        }
    );
  }
}
