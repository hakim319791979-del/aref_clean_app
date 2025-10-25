// lib/main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text('اعرف قبل أن تسافر')),
      body: const Center(child: Text('جاهز للبناء')),
    ),
  ));
}