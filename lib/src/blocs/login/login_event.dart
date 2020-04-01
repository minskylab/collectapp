part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;

  LoginButtonPressed({this.username, this.password});

  @override
  List<Object> get props => [username, password];

  String toString() => "Login Button Pressed {${this.username}, ${this.password}}";
}
