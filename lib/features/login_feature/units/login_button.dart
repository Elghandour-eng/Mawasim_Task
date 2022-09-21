part  of'../login_view.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        CustomButton(
          function: () {
          },
          text: 'دخول',
          width: .5.sw,
          borderRadius: 5.r,
          height: 45.h,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'تسجيل جديد   ',
              textStyle: Theme.of(context).textTheme.headline4,
            ),
            CustomText(
              text: 'ليس لدي حساب   ',
              textStyle: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
        SizedBox(
          height: .07.sh,
        )
      ],
    );
  }
}
