import 'package:collectapp/src/blocs/login/login_bloc.dart';
import 'package:collectapp/src/screens/Home.dart';
import 'package:collectapp/src/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      routes: {
        "/": (context) => HomeScreen(),
        "/login": (context) => BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(),
              child: LoginScreen(),
            ),
      },
      initialRoute: "/",
    );
  }
}
