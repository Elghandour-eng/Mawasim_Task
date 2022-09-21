part of '../login_view.dart';

///
///* Customize This Widget as it use in
///* more than screen in Auth Flow (eg .. signin, Signup ...)

class TopTextLoginView extends StatelessWidget {
  final String? text1;
  final String? text2;
  final bool? show3;

  /// Show third text or not */
  final String? text3;

  const TopTextLoginView(
      {Key? key, this.show3 , this.text1, this.text2, this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              text: text1 ?? ' !  مرحبا بعودتك',
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
              text: text2 ?? 'تسجيل الدخول للمتابعه',
              textStyle: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
        show3??true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: text3 ?? 'تسجيل الدخول ',
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
              )
            : const SizedBox(),
      ],
    );
  }
}
