import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activate_data.g.dart';



@JsonSerializable()
class ActivateData extends Equatable {
  final int? code;


  const ActivateData({this.code});


  factory ActivateData.fromJson(Map<String, dynamic> json) =>
      _$ActivateDataFromJson(json);

  Map<String, dynamic> toJson() => _$ActivateDataToJson(this);

  @override
  List<Object?> get props => [code];
}

