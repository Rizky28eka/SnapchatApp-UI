import 'package:flutter/material.dart';
import 'package:slicing_snapchat/page/home_page.dart';
import 'package:slicing_snapchat/page/initial_page.dart';
import 'package:slicing_snapchat/page/login_page.dart';
import 'package:slicing_snapchat/page/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF838486),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InitialPage(),
        '/login_page': (context) => LoginPage(),
        '/register_page': (context) => RegisterPage(),
        '/home_page': (context) => HomePage(),
      },
    );
  }
}
