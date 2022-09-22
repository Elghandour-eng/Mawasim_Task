// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServicesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) =>
    ServicesResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ServicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      success: json['success'] as String?,
    );

Map<String, dynamic> _$ImagesResponseToJson(ServicesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
