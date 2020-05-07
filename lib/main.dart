import 'package:flutter/material.dart';
import 'package:kimantara/components/category_drop_menu.dart';
import 'package:kimantara/screens/bookings.dart';
import 'package:kimantara/screens/login_screen.dart';
import 'package:kimantara/screens/org_list.dart';
import 'package:kimantara/screens/sign_up.dart';

import 'screens/login_screen.dart';
import 'screens/org_option_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kimantara',
      home: MyLoginPage(),
      // home: MyHomePage(),
      // home: ListSongs(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignupPage(),
        '/home': (BuildContext context) => new OrgPage(),
        '/login': (BuildContext context) => new MyLoginPage(),
        '/store': (BuildContext context) => new CategoryDropMenu(),
        '/storelist': (BuildContext context) => new ListSongs(),
      },
    );
  }
}
