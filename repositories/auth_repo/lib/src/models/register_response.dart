import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../auth_repo.dart';
part 'register_response.g.dart';






@JsonSerializable()
class RegisterResponse extends Equatable {
  final bool? status;
  final String? message;
  final User? data;


  const RegisterResponse({required this.status, this.message, this.data});


  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);

  @override
  List<Object?> get props => [status, message, data];
}
