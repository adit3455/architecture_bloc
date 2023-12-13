import 'package:dio/dio.dart';

class AuthenticationService {
  final Dio _dio;

  AuthenticationService(this._dio);

  // https://reqres.in/api/users?page=2
  Future<Response> getAccountList(int pageNumber) async {
    return await _dio.get("users/?page=$pageNumber");
  }
}
