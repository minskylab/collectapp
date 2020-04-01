import 'package:collectapp/src/blocs/login/login_bloc.dart';
import 'package:collectapp/src/global/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _launchURL() async {
    const url = 'https://collecta.minsky.cc/login/google';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        logger.d("current bloc state: ${state.toString()}");
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("I'm the Login Screen"),
                  RaisedButton(
                    onPressed: () {
                      logger.i("BUTTON CLICKED");
                      // BlocProvider.of<LoginBloc>(context).add();
                      _launchURL();
                    },
                    child: Text("Click me to login"),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
