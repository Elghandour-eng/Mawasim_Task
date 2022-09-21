// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivateResponse _$ActivateResponseFromJson(Map<String, dynamic> json) =>
    ActivateResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ActivateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActivateResponseToJson(ActivateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
