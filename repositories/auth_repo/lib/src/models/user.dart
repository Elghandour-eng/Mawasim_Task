import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.isNotify

  });

  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? image;
  @JsonKey(name:"is_notifiy" )
  final bool? isNotify;


  User copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? image,
    bool? isNotify

  }) =>
      User(
          id: id ?? this.id,
          name: name ?? this.name,
          email: email ?? this.email,
          phone: phone ?? this.phone,
          image: image ?? this.image,
          isNotify:isNotify??this.isNotify

      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
    id,
    name,
    email,
    image,
    phone,
    isNotify
  ];
}