import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/app_images/app_images.dart';
import 'package:mawasim_task/core/color_manager/color_manager.dart';
import 'package:mawasim_task/widgets/custom_button.dart';
import 'package:mawasim_task/widgets/custom_text_field.dart';
import 'package:mawasim_task/widgets/custom_text_widget.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';
import '../../../widgets/bottom_image.dart';
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
          child: Column(
            children: [
              SizedBox(
                height: 55.h,
              ),
              const _TopTextLoginView(),
              const _TextFieldsView(),
              const _LoginButton(),
              const
              BottomImage(
                image: AppImages.loginIllustration,
              )
            ],
          ),
        ),
      ),
    );
  }
}
