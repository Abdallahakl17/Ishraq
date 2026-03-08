import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static const String saveOnboareding = 'onboarding_completed';
  SharedPrefsHelper._privateConstructor();
  static final SharedPrefsHelper instance =
      SharedPrefsHelper._privateConstructor();

  Future<void> saveOnboardingStatus(bool isComplete) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(saveOnboareding, isComplete);
    print(pref.get(saveOnboareding));
  }

  Future<bool> getOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(saveOnboareding) ?? false;
  }
}
