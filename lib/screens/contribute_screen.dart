// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ContributeScreen extends StatelessWidget {
  const ContributeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('مساهمة المستخدمين')),
        body: const Center(child: Text('نموذج مبسّط سيتم بناؤه لاحقًا')),
      ),
    );
  }
}