// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServicesModel _$ServicesModelFromJson(Map<String, dynamic> json) =>
    ServicesModel(
      id: json['id'] as int?,
      imagePath: json['image'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ServicesModelToJson(ServicesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.imagePath,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
    };
