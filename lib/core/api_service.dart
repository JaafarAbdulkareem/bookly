import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String url}) async {
    Response response = await _dio.get(url);
    return response.data;
  }
}
