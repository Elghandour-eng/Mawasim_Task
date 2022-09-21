
import 'package:auth_repo/src/models/activate_data.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'activate_response.g.dart';
@JsonSerializable()
class ActivateResponse extends Equatable {
  final bool? status;
  final String? message;
  final ActivateData? data;


  const ActivateResponse({required this.status, this.message, this.data});

  factory ActivateResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActivateResponseToJson(this);

  @override
  List<Object?> get props => [status, message, data];
}