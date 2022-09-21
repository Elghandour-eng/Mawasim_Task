part of'../sign_up_view.dart';
class _SignUpFieldsView extends StatelessWidget {
  const _SignUpFieldsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: SignUpBloc.get(context).formKey,
      child: Column(
        children: [
          const SizedBox(height: 35,),

          CustomTextField(
            controller: SignUpBloc.get(context).nameController,
            hPadding: 15.w,
            borderRadius: 15.r,
            hintText: 'اسم المستخدم',
            validate: Validator.validateName,
            filledColor: Colors.grey[200],
            prefixIcon:const Icon(
                Icons.person_outline
            ),
          ),
          const SizedBox(height: 15,),

          CustomTextField(
            hPadding: 15.w,
            borderRadius: 15.r,
            controller: SignUpBloc.get(context).phoneController,
            textInputType: TextInputType.number,
            hintText: 'رقم الجوال',
            validate: Validator.validatePhone,
            filledColor: Colors.grey[200],
            prefixIcon:const Icon(
                Icons.phone_android_outlined
            ),

          ),
          const SizedBox(height: 15,),

          CustomTextField(
            hPadding: 15.w,
            borderRadius: 15.r,
            controller: SignUpBloc.get(context).identifyIdController,
            hintText: 'البريد الالكتروني',
            validate: Validator.validateEmail,
            filledColor: Colors.grey[200],
            prefixIcon:const Icon(
                Icons.mail_outline
            ),
          ),
          const SizedBox(height: 15,),
          CustomTextField(
            hPadding: 15.w,
            controller: SignUpBloc.get(context).passwordController,
            borderRadius: 15.r,
            filledColor:Colors.grey[200],
            hintText: 'كلمة المرور',
            validate: Validator.validatePassword,
            isPassword: true,
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
            controller: SignUpBloc.get(context).confirmPasswordController,
            hintText: 'تاكيد كلمة المرور',
            prefixIcon:const Icon(
                Icons.lock_outline
            ),
            isPassword: true,
            validate: (value){
              if(value==null){
                return 'ادخل كلمة المرور';
              }else if(value != SignUpBloc.get(context).passwordController.text){
                return 'تأكد من تطابق كلمتين المرور';
              }
              else {
                return null;
              }
            },
            suffixIcon: const Icon(Icons.visibility_off),
          ),




        ],
      ),
    );
  }
}