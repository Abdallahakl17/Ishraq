class Prayer {
  final String name;
  final String time;

  Prayer({required this.name, required this.time});
}

class PrayerTimeModel {
  final List<Prayer> prayers;  
  final String gregorianDate;
  final String weekday;

  final String hijriDay;
  final String hijriMonth;
  final String hijriYear;

  PrayerTimeModel({
    required this.prayers,
    required this.gregorianDate,
    required this.weekday,
    required this.hijriDay,
    required this.hijriMonth,
    required this.hijriYear,
  });

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'];

     List<Prayer> prayers = [
      Prayer(name: "Fajr", time: data['timings']['Fajr']),
      Prayer(name: "Dhuhr", time: data['timings']['Dhuhr']),
      Prayer(name: "Asr", time: data['timings']['Asr']),
      Prayer(name: "Maghrib", time: data['timings']['Maghrib']),
      Prayer(name: "Isha", time: data['timings']['Isha']),
    ];

    return PrayerTimeModel(
      prayers: prayers,
      gregorianDate: data['date']['readable'],
      weekday: data['date']['gregorian']['weekday']['en'],
      hijriDay: data['date']['hijri']['day'],
      hijriMonth: data['date']['hijri']['month']['en'],
      hijriYear: data['date']['hijri']['year'],
    );
  }
}