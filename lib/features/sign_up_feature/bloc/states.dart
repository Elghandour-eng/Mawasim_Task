part of 'bloc.dart';

abstract class SignIUpState extends Equatable {
  const SignIUpState();
}

class SignUpInitial extends SignIUpState {
  @override
  List<Object> get props => [];
}

class SignUpLoadingProgress extends SignIUpState {
  @override
  List<Object?> get props => [];
}

class SignUpSuccess extends SignIUpState {
  final User user;
  const SignUpSuccess({required this.user});
  @override
  List<Object?> get props => [user];
}

class SignUpFailure extends SignIUpState {
  final String? error;

  const SignUpFailure({required this.error});

  @override
  List<Object?> get props => [error];
}

class CodeSendSuccess extends SignIUpState {
  final String? code;

  const CodeSendSuccess({required this.code});

  @override
  List<Object?> get props => [code];
}

class CodeSendFailure extends SignIUpState {
  final String? err;

  const CodeSendFailure({required this.err});

  @override
  List<Object?> get props => [err];
}
