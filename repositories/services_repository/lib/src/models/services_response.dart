


import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:services_repository/src/models/services_model.dart';
part 'services_response.g.dart';


@JsonSerializable()
class ServicesResponse extends Equatable
{
  const ServicesResponse({this.data,this.message,this.success});
  final String? success;
  final String? message;
  final List<ServicesModel>? data;


  factory ServicesResponse.froJson(Map <String,dynamic> json)=>_$ImagesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesResponseToJson(this);
  @override
  // TODO: implement props
  List<Object?> get props => throw [success,message,data];
}