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
      id: json['id'],
      name: json['name'],
      url: json['url'],
      recentDate: json['recent_date'],
    );
  }
}

List<RadioStation> parseRadios(Map<String, dynamic> json) {
  var list = json['radios'] as List;
  return list.map((e) => RadioStation.fromJson(e)).toList();
}
