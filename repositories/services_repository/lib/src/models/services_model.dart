import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'services_model.g.dart';
@JsonSerializable()
class ServicesModel extends Equatable
{

  const ServicesModel({this.id,this.imagePath,this.category,this.description,this.price,this.title});
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'image')
  final String? imagePath;
  final String? title;
  final String? description;
  final String? category;
  final double? price;
  factory ServicesModel.fromJson(Map <String,dynamic> json)=>_$ServicesModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServicesModelToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props =>[id,imagePath,title,description,price,category];

}