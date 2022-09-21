part  of'../login_view.dart';
class _TopTextLoginView extends StatelessWidget {
  const _TopTextLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              text: ' !  مرحبا بعودتك',
              textStyle: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              text: 'تسجيل الدخول للمتابعه',
              textStyle: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              text: 'تسجيل الدخول ',
              textStyle: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              width: 4.w,
            ),
            SizedBox(
              width: 35.w,
              height: 1.h,
              child: Container(
                color: ColorManager.textColor2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
