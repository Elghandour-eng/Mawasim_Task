part of 'bloc.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();
}

class SignInButtonPressed extends SignInEvent {
  final String email;
  final String password;
  final String? deviceId;
  final String? firebaseToken;
  const SignInButtonPressed({
    required this.email,
    required this.password,
    this.deviceId,
    this.firebaseToken,
  });

  @override
  List<Object?> get props => [email, password, deviceId, firebaseToken];
}
