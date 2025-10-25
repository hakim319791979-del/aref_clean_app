import '../models/country.dart';

class MockDataService {
  final List<Country> _countries = const [
    Country(
      code: 'TR',
      nameAr: 'تركيا',
      nameEn: 'Türkiye',
      laws: 'الإقامة والعمل والمرور.',
      customs: 'تحية رسمية وخلع الحذاء في البيوت.',
      safety: 'آمن عموماً. انتبه للنصب السياحي.',
      costs: 'إسطنبول أعلى من غيرها. النقل العام مقبول.',
    ),
    Country(
      code: 'DE',
      nameAr: 'ألمانيا',
      nameEn: 'Germany',
      laws: 'صرامة في الضرائب والمخالفات.',
      customs: 'دقة المواعيد واحترام الخصوصية.',
      safety: 'مرتفع.',
      costs: 'السكن مرتفع في المدن الكبرى.',
    ),
  ];

  List<Country> search(String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return List.unmodifiable(_countries);
    return _countries.where((c) =>
      c.nameAr.contains(query) ||
      c.nameEn.toLowerCase().contains(q) ||
      c.code.toLowerCase() == q
    ).toList(growable: false);
  }

  List<Map<String, String>> getMockContributions(String countryCode) {
    final now = DateTime.now().toIso8601String();
    return [
      {'user': 'ضيف', 'text': 'حمّل İstanbulkart من المطار.', 'timestamp': now},
      {'user': 'Guest', 'text': 'Keep small cash for bakeries.', 'timestamp': now},
    ];
  }
}