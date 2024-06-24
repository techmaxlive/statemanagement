import 'package:dartz/dartz.dart';
import 'package:statemanagement/core/error/failure.dart';
import 'package:statemanagement/core/login/data/datasources/login_remote_data_source.dart';
import 'package:statemanagement/core/login/domain/entities/login_request_entity.dart';
import 'package:statemanagement/core/login/domain/entities/login_response_entity.dart';
import 'package:statemanagement/core/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoredatasource;
  LoginRepositoryImpl({required this.loginRemoredatasource});
  @override
  Future<Either<Failure, LoginResponseEntity>> getLoginResponse(
      LoginRequestEntity requestEntity) {
    try {} catch (e) {}
  }
}
