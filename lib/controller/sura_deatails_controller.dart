import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart'; // عشان ChangeNotifier
import 'package:ishraq/features/home/models/sura_items_model.dart';

class SuraDetailsController extends ChangeNotifier {
  bool isLoading = false;

   SuraItemsModel? surah;

  Future<void> loadSurah(int number) async {
    isLoading = true;
    notifyListeners();

    final fileNumber = number.toString().padLeft(3, '0');
    final data = await rootBundle.loadString('assets/files/surahs/$fileNumber.json');
    final jsonResult = jsonDecode(data);

    surah = SuraItemsModel.fromJson(jsonResult);

    isLoading = false;
    notifyListeners();
  }
}