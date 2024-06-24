import 'package:statemanagement/core/login/domain/entities/login_response_entity.dart';

class LoginResponseModel extends LoginResponseEntity {
  const LoginResponseModel(
      {required super.userName,
      required super.password,
      required super.email,
      required super.success,
      required super.userCheck});
  factory LoginResponseModel.fromjson(Map<String, dynamic> json) {
    return LoginResponseModel(
      userName: json["userName"] ?? '',
      password: json["password"] ?? '',
      email: json['email'] ?? '',
      success: json['success'] ?? false,
      userCheck: json['userCheck'] ?? false,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "userName": userName,
      'password': password,
      'email': email,
      'success': success,
      'userCheck': userCheck
    };
  }
}
