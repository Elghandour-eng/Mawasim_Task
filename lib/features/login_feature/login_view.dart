import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/app_images/app_images.dart';
import 'package:mawasim_task/core/color_manager/color_manager.dart';
import 'package:mawasim_task/core/router/router.dart';
import 'package:mawasim_task/core/validator/validator.dart';
import 'package:mawasim_task/features/forget_pass_feature/units/forget_pass_view.dart';
import 'package:mawasim_task/features/login_feature/bloc/bloc.dart';
import 'package:mawasim_task/features/login_feature/units/sign_in_button.dart';
import 'package:mawasim_task/widgets/custom_button.dart';
import 'package:mawasim_task/widgets/custom_text_field.dart';
import 'package:mawasim_task/widgets/custom_text_widget.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';
import '../../../widgets/bottom_image.dart';
import '../sign_up_feature/sign_up_view.dart';
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
            height: MediaQuery.of(context).orientation == Orientation.landscape
                ? 1.65.sh
                : 1.12.sh,
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(
                  height: 55.h,
                ),
                const TopTextLoginView(),
                const _TextFieldsView(),
                const LoginButton(),
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
