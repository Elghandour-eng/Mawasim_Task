import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/features/login_feature/login_view.dart';
import 'package:mawasim_task/widgets/bottom_image.dart';
import 'package:mawasim_task/widgets/custom_text_widget.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';

import '../../../core/app_images/app_images.dart';
import 'code_field.dart';
import 'otp_button.dart';

class OtpView extends StatelessWidget {
  final bool? isPhone;
  final String? email;

  const OtpView({Key? key, this.isPhone, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScaffold(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height:MediaQuery.of(context).orientation==Orientation.landscape?1.8.sh: 1.sh,

          width: 1.sw,
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 30),
                child: TopTextLoginView(
                    text1: "! مرحبا بك ",
                    text2: "تأكيد التسجيل بالتطبيق",
                    show3: false),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomText(
                text: 'كود التحقق',
                textStyle: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 30,
              ),
              const CodeField(),
              OtpButton(email: email, isPhone: isPhone),
              const Spacer(),
              const BottomImage(
                image: AppImages.vPhone,
              )
            ],
          ),
        ),
      ),
    );
  }
}

