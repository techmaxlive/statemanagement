import 'package:dio/dio.dart';
import 'package:statemanagement/core/error/failure.dart';
import 'package:statemanagement/core/login/data/models/login_response_model.dart';
import 'package:statemanagement/core/login/domain/entities/login_request_entity.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponseModel> getLoginReponse(LoginRequestEntity requestEntity);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final Dio dio;
  LoginRemoteDataSourceImpl({required this.dio});
  @override
  Future<LoginResponseModel> getLoginReponse(
      LoginRequestEntity requestEntity) async {
    try {
      String url = "http";

      final response = await dio.get(
        url,
        data: {
          "userName": requestEntity.userName,
          'password': requestEntity.password,
          'email': requestEntity.email,
        },
        options: Options(
          headers: {},
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw ServerFailure();
      }
    } catch (e) {
      throw CacheFailure();
    }
  }
}
