import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mulai_flutter/home_page.dart';
import 'package:mulai_flutter/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        '/loginPage': (context) => LoginPage(),
        '/homePage': (context) => HomePage(
              namaUser: '',
            ),
      },
      // home: LoginPage(),
      initialRoute: '/loginPage',
    );
  }
}
