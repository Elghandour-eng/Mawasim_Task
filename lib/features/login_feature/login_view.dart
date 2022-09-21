import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/app_images/app_images.dart';
import 'package:mawasim_task/core/color_manager/color_manager.dart';
import 'package:mawasim_task/core/router/router.dart';
import 'package:mawasim_task/features/forget_pass_feature/units/forget_pass_view.dart';
import 'package:mawasim_task/widgets/custom_button.dart';
import 'package:mawasim_task/widgets/custom_text_field.dart';
import 'package:mawasim_task/widgets/custom_text_widget.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';
import '../../../widgets/bottom_image.dart';
import '../sign_up_feature/units/sign_up_view.dart';
part 'units/top_text.dart';
part 'units/text_fields_view.dart';
part 'units/login_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScaffold(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: SizedBox(
            height: 1.1.sh,
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(
                  height: 55.h,
                ),
                const TopTextLoginView(),
                const _TextFieldsView(),
                const AuthButton(),
                const
                BottomImage(
                  image: AppImages.loginIllustration,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
