import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<String>> loadSurah(int number) async {
   final fileNumber = number.toString().padLeft(3, '0');

   final data = await rootBundle.loadString(
    'assets/files/surahs/$fileNumber.json',
  );
  final jsonResult = json.decode(data);

   return List<String>.from(jsonResult['verses'].map((v) => v['text_ar'] ?? ''));
}

 
