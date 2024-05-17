import 'package:flutter/material.dart';
import 'package:mulai_flutter/view/home_page.dart';
import 'package:mulai_flutter/view/login_page.dart';
import 'package:mulai_flutter/theme.dart';
import 'package:mulai_flutter/view/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      routes: {
        '/loginPage': (context) => LoginPage(),
        '/homePage': (context) => HomePage(
              namaUser: '',
            ),
      },
      home: MainPage(),
      // initialRoute: '/loginPage',
    );
  }
}
