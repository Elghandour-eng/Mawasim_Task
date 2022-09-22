import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../auth_repo.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends Equatable {
  final bool? status;
  final String? message;
  final Data? data;


  const LoginResponse({required this.status, this.message, this.data});


  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  @override
  List<Object?> get props => [status, message, data];
}
