import 'package:equatable/equatable.dart';

class LoginResponseEntity extends Equatable {
  final String userName, password, email;
  final bool success, userCheck;
  const LoginResponseEntity({
    required this.userName,
    required this.password,
    required this.email,
    required this.success,
    required this.userCheck,
  });

  @override
  List<Object?> get props => [userName, password, email, success, userCheck];
}
