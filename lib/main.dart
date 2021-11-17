import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/constants.dart';
import 'package:flutter_login_ui/login_page.dart';

void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        accentColor: Constants.accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: LoginPage(),
    );
  }
}


