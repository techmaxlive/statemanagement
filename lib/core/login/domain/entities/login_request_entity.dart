import 'package:equatable/equatable.dart';

class LoginRequestEntity extends Equatable {
  final String userName, password, email;
  const LoginRequestEntity(
      {required this.userName, required this.password, required this.email});
  @override
  List<Object?> get props => [
        userName,
        password,
        email,
      ];
}
