import 'package:flutter/services.dart';
import 'package:ishraq/core/my_shared.dart';

class HadithController extends ChangeNotifier {
  Future<String> fetchHadith(int index) async {
    String hadithPath = 'assets/files/Hadeeth/h$index.txt';
    String hadithText = await rootBundle.loadString(hadithPath);
    print(hadithText);
    notifyListeners();
    return hadithText;
  }
}
