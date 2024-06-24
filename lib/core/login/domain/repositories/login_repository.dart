import 'package:dartz/dartz.dart';

import '../../../error/failure.dart';
import '../entities/login_request_entity.dart';
import '../entities/login_response_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResponseEntity>> getLoginResponse(
    LoginRequestEntity requestEntity,
  );
}
