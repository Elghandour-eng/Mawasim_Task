part of '../login_view.dart';

class AuthButton extends StatelessWidget {
  final void Function()? onTab;
  final String? text;
  final bool? showBottom;
  final String? body1;
  final String? body2;

  const AuthButton(
      {Key? key,
      this.onTab,
      this.text,
      this.showBottom,
      this.body1,
      this.body2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        CustomButton(
          function: onTab ?? () {},
          text: text ?? 'دخول',
          width: .5.sw,
          borderRadius: 5.r,
          height: 45.h,
        ),
        const SizedBox(
          height: 15,
        ),
        showBottom ?? true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => MagicRouter.navigateTo(const SignUpView()),
                    child: CustomText(
                      text: body2 ?? 'تسجيل جديد   ',
                      textStyle: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  CustomText(
                    text: body1 ?? 'ليس لدي حساب   ',
                    textStyle: Theme.of(context).textTheme.headline2,
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(
          height: .07.sh,
        )
      ],
    );
  }
}
