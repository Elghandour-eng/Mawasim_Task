import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:auth_repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(
      {required AuthenticationRepository authenticationRepository,
        })
      : _authenticationRepository = authenticationRepository,
        super(SignInInitial()) {
    on<SignInButtonPressed>(_onSignInButtonPressed);
  }

  static SignInBloc get(context) => BlocProvider.of(context);

  final AuthenticationRepository _authenticationRepository;
  TextEditingController identifyIdController = TextEditingController(),
      passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void _onSignInButtonPressed(
      SignInButtonPressed event, Emitter<SignInState> emit) async {
    emit(SignInLoadingProgress());
   try {
      var user = await _authenticationRepository.signIn(
          email: event.email,
          password: event.password,
          deviceId: event.deviceId!,
          tokenFirebase: event.firebaseToken);
      emit(SignInSuccess(user: user.data!.user!));

      emit(SignInInitial());
   } on SocketException catch (e) {
     debugPrint(e.message);
     emit(const SignInFailure(error: 'تحقق من اتصالك بالانترنت'));
   } catch (err) {
     emit(const SignInFailure(error: 'الرقم القومي أو كلمة المرور غير صحيحة'));
    }
  }
}
