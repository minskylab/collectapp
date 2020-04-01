import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collectapp/src/global/logger/logger.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitial();

  @override
  void onTransition(Transition<LoginEvent, LoginState> transition) {
    super.onTransition(transition);
    logger.d(transition);
  }

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    logger.d("mapping");
    if (event is LoginButtonPressed) {
      yield LoginSuccess();
    }
  }
}
