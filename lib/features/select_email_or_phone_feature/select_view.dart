import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/app_images/app_images.dart';
import 'package:mawasim_task/features/login_feature/login_view.dart';
import 'package:mawasim_task/features/select_email_or_phone_feature/units/card_container.dart';
import 'package:mawasim_task/features/sign_up_feature/bloc/bloc.dart';
import 'package:mawasim_task/widgets/bottom_image.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';

import '../../../widgets/custom_text_widget.dart';

class SelectOptionToActivateView extends StatelessWidget {
  final String? name;
  final String? phone;
  final String? email;

  const SelectOptionToActivateView(
      {Key? key, this.name, this.phone, this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScaffold(
      child: SizedBox(
        width: 1.sw,
        height: MediaQuery.of(context).orientation==Orientation.landscape?
        2.sh:1.sh,
        child: Stack(
          children: [
            const Align(
                alignment: Alignment.bottomLeft,
                child: BottomImage(
                  image: AppImages.vertify,
                )),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TopTextLoginView(
                      text1: '!  $name  مرحبا   ',
                      text2: 'تاكيد التسجيل بالتطبيق ',
                      show3: false,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomText(
                      text:
                          '. برجاء تحقيق واحد من الخيارات التاليه لارسال كود التحقق',
                      textStyle: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  sendCodeContainer(context: context, onTap: () {
                     SignUpBloc.get(context).add(SendActivationCode(email: phone??'', type: 'phone'));
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                 
           sendCodeContainer(
                          context: context,
                          text1: 'البريد الالكتروني',
                          text2: 'رجاء ادخال البريد الالكتروني لارسال كود التحقق',
                          image: AppImages.emailIcon,
                          onTap: () {
                            SignUpBloc.get(context).add(SendActivationCode(email: email??'', type: 'email'));

                          })
         
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
