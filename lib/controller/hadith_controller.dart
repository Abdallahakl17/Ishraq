import 'package:flutter/services.dart';
import 'package:ishraq/core/my_shared.dart';

class HadithController extends ChangeNotifier {

  Future<Map<String, String>> fetchHadith(int index) async {

    String hadithPath = 'assets/files/Hadeeth/h$index.txt';

    String hadithText = await rootBundle.loadString(hadithPath);

    List<String> lines = hadithText.split('\n');

    String title = lines.first;

    String content = lines.sublist(1).join('\n');

    return {
      "title": title,
      "content": content,
    };

  }
}