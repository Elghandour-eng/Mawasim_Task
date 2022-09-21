part of 'bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
}

class SignUpButtonPressed extends SignUpEvent {
  final String email;
  final String password;
  final String? phone;
  final String? name;
  final String? confirmPassword;
  final String? deviceId;
  final String? firebaseToken;

  const SignUpButtonPressed(
      {required this.email,
      required this.password,
      this.deviceId,
      this.firebaseToken,
      this.confirmPassword,
      this.name,
      this.phone});

  @override
  List<Object?> get props =>
      [email, password, deviceId, firebaseToken, confirmPassword, phone, name];
}
