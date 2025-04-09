import 'package:flutter/material.dart';
import 'package:monikee/pages/login.dart';
import 'package:monikee/pages/Signup.dart';
import 'package:monikee/pages/Additional_Details.dart';
import 'package:monikee/pages/Address_Details.dart';
import 'package:monikee/pages/Broker_Registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

