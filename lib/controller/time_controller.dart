import 'dart:developer';

import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/core/network/api_services.dart';
import 'package:ishraq/core/network/const.dart';
import 'package:ishraq/features/home/models/time_pray_model.dart';
import 'package:intl/intl.dart';

class TimeController extends ChangeNotifier {
  final apiClient = ApiClient();
  bool isMuted = true;
  IconData icon = Icons.volume_up;
  void muteSound() {
    isMuted = !isMuted;
    notifyListeners();
  }

  // This function is intentionally left empty to mute the sound.
  PrayerTimeModel? prayerModel;

  String formatTime(String time24) {
    final parts = time24.split(':');
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    final dt = DateTime(0, 1, 1, hour, minute);
    return DateFormat('h:mm').format(dt);
  }

  String getPeriod(String time24) {
    final parts = time24.split(':');
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    final dt = DateTime(0, 1, 1, hour, minute);
    return DateFormat('a').format(dt);
  }

  DateTime parsePrayerTime(String time24) {
    final parts = time24.split(':');
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, hour, minute);
  }

  Prayer? getNextPrayer() {
    if (prayerModel == null) return null;

    final now = DateTime.now();
    for (var prayer in prayerModel!.prayers) {
      final prayerTime = parsePrayerTime(prayer.time);
      if (prayerTime.isAfter(now)) {
        return prayer;
      }
    }
    return prayerModel!.prayers.first;
  }

  Future<void> fetchPrayerTimes() async {
    try {
      final data = await apiClient.get(
        ApiConstants.prayTimesByCity,
        baseUrl: ApiConstants.prayTimeBaseUrl,
        query: {'city': 'Cairo', 'country': 'Egypt', 'method': 2},
      );

      prayerModel = PrayerTimeModel.fromJson(data);

      notifyListeners();
    } catch (e) {
      log('Error fetching prayer times: $e');
    }
  }
}
