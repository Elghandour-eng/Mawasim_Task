import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:auth_repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'states.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignIUpState> {
  SignUpBloc(
      {required AuthenticationRepository authenticationRepository,
      })
      : _authenticationRepository = authenticationRepository,
        super(SignUpInitial()) {
    on<SignUpButtonPressed>(_onSignUpButtonPressed);
    on<SendActivationCode>(_onSendActivationCode);
    on<ActivationCode>(_onActivationCode);

  }

  static SignUpBloc get(context) => BlocProvider.of(context);

  final AuthenticationRepository _authenticationRepository;
  TextEditingController identifyIdController = TextEditingController(),
      passwordController = TextEditingController(),
      nameController = TextEditingController(),
      phoneController = TextEditingController(),
      confirmPasswordController = TextEditingController()
   ,otpController = TextEditingController() ;
  final formKey = GlobalKey<FormState>();

  void _onSignUpButtonPressed(
      SignUpButtonPressed event, Emitter<SignIUpState> emit) async {
    emit(SignUpLoadingProgress());
     try {
    var user = await _authenticationRepository.register(
        email: event.email,
        password: event.password,
        deviceId: event.deviceId!,
        tokenFirebase: event.firebaseToken,
        name:event.name??'',
        phone:event.phone??"",
        confirmPassword: event.confirmPassword??''
    );
    emit(SignUpSuccess(user: user.data!));

    emit(SignUpInitial());
    } on SocketException catch (e) {
     debugPrint(e.message);
    emit(const SignUpFailure(error: 'تحقق من اتصالك بالانترنت'));
    } catch (err) {
    emit(const SignUpFailure(error: 'البريد الالكتروني أو كلمة المرور غير صحيحة'));
    }
  }


  void _onSendActivationCode(
      SendActivationCode event, Emitter<SignIUpState> emit) async {
    emit(SignUpLoadingProgress());
    try {
      var user = await _authenticationRepository.activatePhoneOrEmail(
          email: event.email,
          type: event.type,
      );
      emit(CodeSendSuccess(code: user.data?.code.toString()));

      emit(SignUpInitial());
    } on SocketException catch (e) {
      debugPrint(e.message);
      emit(const CodeSendFailure(err: 'تحقق من اتصالك بالانترنت'));
    } catch (err) {
     // print(err);
      emit(const CodeSendFailure(err: 'حدث خطأ ما'));
    }
  }


  void _onActivationCode(
      ActivationCode event, Emitter<SignIUpState> emit) async {
    emit(SignUpLoadingProgress());
    try {
      var user = await _authenticationRepository.activateOtp(
        email: event.email,
        type: event.type,
        code: event.code

      );
      emit(ActivateCodeSuccess(code: user.data?.code.toString()));

      emit(SignUpInitial());
    } on SocketException catch (e) {
      debugPrint(e.message);
      emit(const ActivateCodeFailure(err: 'تحقق من اتصالك بالانترنت'));
    } catch (err) {
      // print(err);
      emit(const ActivateCodeFailure(err: 'حدث خطأ ما'));
    }
  }

}
