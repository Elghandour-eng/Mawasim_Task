part  of'../login_view.dart';
class _TextFieldsView extends StatelessWidget {
  const _TextFieldsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h,),

        CustomTextField(
          hPadding: 15.w,
          borderRadius: 15.r,
          hintText: 'البريد الالكتروني',
          filledColor: Colors.grey[200],
          prefixIcon:const Icon(
              Icons.mail_outline
          ),
        ),
        SizedBox(height: 15.h,),
        CustomTextField(
          hPadding: 15.w,
          borderRadius: 15.r,
          filledColor:Colors.grey[200],
          hintText: 'كلمة المرور',
          prefixIcon:const Icon(
              Icons.lock_outline
          ),
          suffixIcon: const Icon(Icons.visibility_off),
        ),
        SizedBox(height: 4.h,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 8),
          child: Row(
            children: [
              const SizedBox(height: 5,),
              GestureDetector(
                onTap: ()=>MagicRouter.navigateTo(const ForgetPassView()),
                child: CustomText(text: 'نسيت كلمة السر ؟',
                textStyle: Theme.of(context).textTheme.headline4,),
              )],
          ),
        ),
      ],
    );
  }
}
