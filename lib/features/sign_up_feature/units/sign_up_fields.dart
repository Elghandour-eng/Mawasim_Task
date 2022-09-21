part of'sign_up_view.dart';
class _SignUpFieldsView extends StatelessWidget {
  const _SignUpFieldsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 35,),

          CustomTextField(
            hPadding: 15.w,
            borderRadius: 15.r,
            hintText: 'اسم المستخدم',
            filledColor: Colors.grey[200],
            prefixIcon:const Icon(
                Icons.person_outline
            ),
          ),
          const SizedBox(height: 15,),

          CustomTextField(
            hPadding: 15.w,
            borderRadius: 15.r,
            hintText: 'رقم الجوال',
            filledColor: Colors.grey[200],
            prefixIcon:const Icon(
                Icons.phone_android_outlined
            ),
          ),
          const SizedBox(height: 15,),

          CustomTextField(
            hPadding: 15.w,
            borderRadius: 15.r,
            hintText: 'البريد الالكتروني',
            filledColor: Colors.grey[200],
            prefixIcon:const Icon(
                Icons.mail_outline
            ),
          ),
          const SizedBox(height: 15,),
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
          const SizedBox(height: 15,),
          CustomTextField(
            hPadding: 15.w,
            borderRadius: 15.r,
            filledColor:Colors.grey[200],
            hintText: 'تاكيد كلمة المرور',
            prefixIcon:const Icon(
                Icons.lock_outline
            ),
            suffixIcon: const Icon(Icons.visibility_off),
          ),




        ],
      ),
    );
  }
}