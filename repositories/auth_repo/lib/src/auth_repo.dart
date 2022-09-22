import 'package:auth_repo/src/models/register_response.dart';
import 'package:dio/dio.dart';

import '../auth_repo.dart';
import 'models/activate_response.dart';

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

  /// Activate Email.
  ///
  /// [Email] parameter is the user national id number.
  /// [Type] parameter is phone or email.

  Future<ActivateResponse> activatePhoneOrEmail({
    required String email,
    required String type,
  }) async {
    var res = await _dio.post(
      "active-phone-or-email",
      data: {
        "email": type == 'phone'?"":email,
        "type":type,
        "phone":type == 'phone'?email:""
      },
    );
    return ActivateResponse.fromJson(res.data);
  }

  Future<ActivateResponse> activateOtp({
    required String email,
    required String type,
    required String code
  }) async {
    var res = await _dio.post(
      "active-code",
      data: {
        "phone_or_email": email,
        "type":type,
        "code":code
      },
    );
    return ActivateResponse.fromJson(res.data);
  }
}
