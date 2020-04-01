part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => "LoginFailure {$error}";
}

class LoginSuccess extends LoginState {}
