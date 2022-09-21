import 'package:auth_repo/src/models/user.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  final String? token;
  final User? user;


  const Data({this.user, this.token});


  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  List<Object?> get props => [token, user];
}
