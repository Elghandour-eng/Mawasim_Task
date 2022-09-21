import 'package:auth_repo/src/models/register_response.dart';
import 'package:dio/dio.dart';

import '../auth_repo.dart';

class AuthenticationRepository {
  AuthenticationRepository({Dio? dio})
      : _dio = dio ?? Dio(BaseOptions(baseUrl: _baseUrl,headers:
  {
    "Accept":"application/json",
    "Accept-Language":"ar"
  }));

  static const _baseUrl = 'https://mawasims.com.sa/api/';

  final Dio _dio;

  /// User Login.
  ///
  /// [Email] parameter is the user national id number.
  /// [password] parameter is the user current password.
  /// [deviceId] parameter is user device Id.
  /// [token_firebase] parameter is token firebase.
  Future<LoginResponse> signIn({
    required String email,
    required String password,
    required String deviceId,
    String? tokenFirebase,
  }) async {
    var res = await _dio.post(
      "login",
      data: {
        "email": email.trim(),
        "password": password.trim(),
        'device_id': deviceId.trim(),
        'token_firebase': tokenFirebase,
      },
    );
    return LoginResponse.fromJson(res.data);
  }

  /// User Register.
  ///
  /// [Email] parameter is the user national id number.
  /// [password] parameter is the user current password.
  /// [deviceId] parameter is user device Id.
  /// [token_firebase] parameter is token firebase.
  Future<RegisterResponse> register({
    required String email,
    required String phone,
    required String name,
    required String password,
    required String confirmPassword,
    required String deviceId,
    String? tokenFirebase,
  }) async {
    var res = await _dio.post(
      "register",
      data: {
        "name":name,
        "email": email.trim(),
        "phone":phone,
        "password": password.trim(),
        "confirm_password":confirmPassword,
        'device_id': deviceId.trim(),
        'token_firebase': tokenFirebase,
      },
    );
    return RegisterResponse.fromJson(res.data);
  }



  //
  // /// Update User Password.
  // ///
  // /// [oldPass] parameter is Current Password.
  // /// [newPass] parameter is New Password.
  // /// [token] parameter  Current user token.
  // Future<LoginResponse> updateUserPassword({
  //   String? oldPass,
  //   String? newPass,
  //   required String token,
  // }) async {
  //   try {
  //     var res = await _dio.post('update-password',
  //         queryParameters: {
  //           "current_password": newPass,
  //           "old_password": oldPass
  //         },
  //         options: Options(headers: {"Authorization": "Bearer $token"}));
  //     return LoginResponse.fromJson(res.data);
  //   } finally {}
  // }
  //
  // /// User Profile.
  // ///
  // /// [token] parameter  Current user token.
  // Future<LoginResponse> getProfile({required String token}) async {
  //   try {
  //     var res = await _dio.post("profile",
  //         options: Options(headers: {"Authorization": "Bearer $token"}));
  //     return LoginResponse.fromJson(res.data);
  //   } finally {}
  // }
  //
  // /// User Profile.
  // ///
  // /// [token] parameter  Current user token.
  // /// [photo] parameter Photo File.
  // Future<LoginResponse> changeProfilePic(
  //     {required String token, File? photo}) async {
  //   try {
  //     String fileImageName = photo!.path.split('/').last;
  //     FormData formData = FormData.fromMap({
  //       "photo":
  //       await MultipartFile.fromFile(photo.path, filename: fileImageName),
  //     });
  //     var res = await _dio.post("update-photo",
  //         data: formData,
  //         options: Options(headers: {"Authorization": "Bearer $token"}));
  //     return LoginResponse.fromJson(res.data);
  //   } finally {}
  // }
}
