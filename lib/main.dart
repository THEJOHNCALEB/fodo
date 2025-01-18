import 'package:flutter/material.dart';
import 'package:fodo/views/login_view.dart';
import 'package:fodo/views/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FODO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      initialRoute: 'login',
      routes: {
        "register": (context)=> RegisterView(),
        "login": (context)=> LoginView(),
      },
    );
  }
}