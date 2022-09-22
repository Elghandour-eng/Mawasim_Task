import 'package:dio/dio.dart';

import 'models/models.dart';

class ServicesRepository {
  ServicesRepository({Dio? dio})
      : _dio = dio ??
      Dio(BaseOptions(baseUrl: _baseUrl, headers:
      {
        "Accept": "application/json",
        "Accept-Language": "ar"
      }));

  static const _baseUrl = 'https://mawasims.com.sa/api/';

  final Dio _dio;
  List<ServicesModel> services = [];

  /// Get services.
  ///
  /// [title] parameter is the  post text.
  /// [desc] parameter is the  desc text.
  /// [id] parameter is post  Id.
  /// [image] parameter is the file path image.
  Future<List<ServicesModel>> getServices() async {
    if (services.isNotEmpty) {
      services.clear();
    }
    var res = await _dio.get("get-services");
    services
        .addAll(List<ServicesModel>.from(
        res.data['data'].map((e) => ServicesModel.fromJson(e))));
    return services;
  }
}