// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CongestionIndexScreen extends StatelessWidget {
  const CongestionIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = const [
      {'district': 'Fatih', 'index': 72},
      {'district': 'Beyoglu', 'index': 65},
      {'district': 'Kadikoy', 'index': 58},
      {'district': 'Basaksehir', 'index': 44},
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('مؤشر ازدحام الأحياء')),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (ctx, i) {
            final row = data[i];
            return ListTile(
              title: Text('${row['district']}'),
              trailing: Text('${row['index']}'),
            );
          },
        ),
      ),
    );
  }
}