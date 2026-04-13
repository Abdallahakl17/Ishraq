class RadioStation {
  final int id;
  final String name;
  final String url;
  final String recentDate;

  RadioStation({
    required this.id,
    required this.name,
    required this.url,
    required this.recentDate,
  });

  factory RadioStation.fromJson(Map<String, dynamic> json) {
    return RadioStation(
      id: int.tryParse(json['id']?.toString() ?? '0') ?? 0,
      name: json['name']?.toString() ?? 'Unknown Radio',
      url: json['url']?.toString() ?? '',
      recentDate: json['recent_date']?.toString() ?? '',
    );
  }
}

List<RadioStation> parseRadios(Map<String, dynamic> json) {
  final list = json['radios'];

  if (list is! List) return [];

  return list
      .map((e) => RadioStation.fromJson(e as Map<String, dynamic>))
      .toList();
}
