import 'package:aba_ui_clone/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABA UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF0b5e84),
        primarySwatch: Colors.blue,
      ),
      home: const Homescreen(),
    );
  }
}
