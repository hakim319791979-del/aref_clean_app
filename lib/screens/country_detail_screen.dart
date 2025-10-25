// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../models/country.dart';
import '../services/mock_data.dart';

class CountryDetailScreen extends StatelessWidget {
  final Country country;
  CountryDetailScreen({super.key, required this.country});

  final _svc = MockDataService();

  @override
  Widget build(BuildContext context) {
    final contributions = _svc.getMockContributions(country.code);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text(country.nameAr)),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _section('القوانين المهمة', country.laws),
            _section('العادات الاجتماعية', country.customs),
            _section('السلامة', country.safety),
            _section('التكاليف التقريبية', country.costs),
            SizedBox(height: 16),
            Text('مساهمات الزوار', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 8),
            ...contributions.map((c) => Card(
                  child: ListTile(
                    title: Text(c['text'] as String),
                    subtitle: Text('${c['user']} • ${c['timestamp']}'),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _section(String title, String body) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(body),
          ],
        ),
      ),
    );
  }
}