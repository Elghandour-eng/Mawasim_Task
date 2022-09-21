import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/widgets/custom_text_field.dart';
import 'package:mawasim_task/widgets/custom_text_widget.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';

import '../../../core/app_images/app_images.dart';
import '../../../widgets/bottom_image.dart';
import '../../login_feature/login_view.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScaffold(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).orientation == Orientation.landscape
                ? 1.5.sh
                : 1.sh,
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(
                  height: 55.h,
                ),
                const TopTextLoginView(
                  text1: '! مرحبآ بك',
                  text2: 'نسيت كلمة المرور',
                  show3: false,
                ),
                CustomText(
                  text: '. برجاء ادخال البريد الالكتروني لارسال كود التحقق',
                  textStyle: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextField(
                  hintText: 'البريد الالكتروني',
                  prefixIcon: const Icon(Icons.mail_outline),
                  hPadding: 25.w,
                ),
                // const _LoginButton(),
                const AuthButton(
                  text: 'ارسال',
                  body1: 'لم يتم الارسال  ',
                  body2: 'اعادة المحاوله',
                ),
                const Spacer(),
                const BottomImage(
                  image: AppImages.forgetPass,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
