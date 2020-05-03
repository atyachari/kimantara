import 'package:flutter/material.dart';
import 'package:kimantara/screens/login_screen.dart';
import 'package:kimantara/screens/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kimantara',
      home: MyLoginPage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignupPage(),
      },
    );
  }
}
