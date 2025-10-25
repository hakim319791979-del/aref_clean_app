// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ArefApp());
}

class ArefApp extends StatelessWidget {
  const ArefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'اعرف قبل أن تسافر',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorSchemeSeed: const Color(0xFF006E7F),
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}