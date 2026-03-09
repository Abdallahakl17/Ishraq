import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {

  static const String onboardingKey = 'onboarding_completed';

  static late SharedPreferences prefs;

  SharedPrefsHelper._privateConstructor();

  static final SharedPrefsHelper instance =
      SharedPrefsHelper._privateConstructor();
  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

   Future<void> saveOnboardingStatus(bool value) async {
    await prefs.setBool(onboardingKey, value);
  }

   bool getOnboardingStatus() {
    return prefs.getBool(onboardingKey) ?? false;
  }

}