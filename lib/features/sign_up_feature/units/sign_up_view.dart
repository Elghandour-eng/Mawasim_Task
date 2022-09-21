import 'package:flutter/material.dart';
import 'package:mawasim_task/core/app_images/app_images.dart';
import 'package:mawasim_task/features/login_feature/login_view.dart';
import 'package:mawasim_task/widgets/bottom_image.dart';
import 'package:mawasim_task/widgets/custom_text_field.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'sign_up_fields.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScaffold(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
          SizedBox(
            height: MediaQuery.of(context).orientation == Orientation.landscape
                ? 1.75.sh
                : 1.sh,
            width: 1.sw,
            child: Stack(
              children: [
               const Align(alignment: Alignment.bottomLeft,
                  child: BottomImage(image: AppImages.signup,),),
                Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    const TopTextLoginView(
                      text1: '! مرحبا بك',
                      text2: 'انشاء حساب لبدء التطبيق',
                      text3: 'تسجيل جديد',
                    ),
                    const _SignUpFieldsView(),
                    const AuthButton(
                      body1: 'لدي حساب بالفعل    ',
                      body2: 'تسجيل دخول',
                      text: 'تسجيل',
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
