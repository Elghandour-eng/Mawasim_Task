part of 'bloc.dart';

abstract class SignInState extends Equatable {
  const SignInState();
}

class SignInInitial extends SignInState {
  @override
  List<Object> get props => [];
}

class SignInLoadingProgress extends SignInState {
  @override
  List<Object?> get props => [];
}

class SignInSuccess extends SignInState {
  final User user;
  const SignInSuccess({required this.user});
  @override
  List<Object?> get props => [user];
}

class SignInFailure extends SignInState {
  final String? error;

  const SignInFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
