part of '../login_view.dart';

class AuthButton extends StatelessWidget {
  final void Function()? onTab;
  final String? text;
  final bool? showBottom;
  final String? body1;
  final String? body2;
  final bool? isLoading;
  final Widget?route;

  const AuthButton(
      {Key? key,
      this.isLoading,
      this.onTab,
      this.text,
      this.showBottom,
      this.body1,
      this.body2,
      this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context,[bool mounted = true]) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),



           CustomButton(
              function: onTab ?? ()async {
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
              isLoading:isLoading??false,
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
                    onTap: () => MagicRouter.navigateTo( route??const SignUpView()),
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
