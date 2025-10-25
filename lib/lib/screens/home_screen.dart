// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../services/mock_data.dart';
import '../models/country.dart';
import 'country_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _svc = MockDataService();
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final results = _svc.search(_query);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text('اعرف قبل أن تسافر')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ابحث عن دولة...',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (v) => setState(() => _query = v),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, i) {
                  final c = results[i];
                  return Card(
                    child: ListTile(
                      title: Text(c.nameAr),
                      subtitle: Text(c.nameEn),
                      trailing: Icon(Icons.chevron_left),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CountryDetailScreen(country: c),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}