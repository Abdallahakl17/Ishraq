import 'package:flutter/material.dart';
import 'package:ishraq/features/home/models/sura_items_model.dart';

class SearchControllerQuran extends ChangeNotifier {

   bool isLoading = false;

   String searchText = '';

   List<SurahModel> filteredSuras = [];



   void searchSura(String value) {

    searchText = value;

    if (value.isEmpty) {
      filteredSuras = [];
    } else {

      final normalizedInput = _normalizeArabic(value);

      filteredSuras = SurahModel.suras.where((sura) {

        final normalizedAr =
            _normalizeArabic(sura.nameSuraAr);

        final normalizedEn =
            sura.nameSuraEn.toLowerCase();

        return normalizedAr.contains(normalizedInput)
            ||
            normalizedEn.contains(
              value.toLowerCase(),
            )
            ||
            sura.numSuraIndex
                .toString()
                .contains(value);

      }).toList();

    }

    notifyListeners();
  }



   String _normalizeArabic(String text) {

    return text
        .replaceAll('أ', 'ا')
        .replaceAll('إ', 'ا')
        .replaceAll('آ', 'ا')
        .replaceAll('ة', 'ه')
        .replaceAll('ى', 'ي')
        .replaceAll('ؤ', 'و')
        .replaceAll('ئ', 'ي');

  }



   void clearSearch() {

    searchText = '';

    filteredSuras = [];

    notifyListeners();
  }

}