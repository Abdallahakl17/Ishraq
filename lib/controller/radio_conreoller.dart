import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:ishraq/core/network/api_services.dart';
import 'package:ishraq/core/network/const.dart';
import 'package:ishraq/features/home/models/radio_model.dart';
class RadioController extends ChangeNotifier {
  List<RadioStation> radios = [];

  final player = AudioPlayer();

  RadioStation? currentRadio;

  bool isPlaying = false;
  bool isMuted = false; // حالة الميوت

  Future<void> fetchRadios() async {
    final apiClient = ApiClient();
    final data = await apiClient.get(
      ApiConstants.radios,
      baseUrl: ApiConstants.mp3QuranBaseUrl,
      query: {'language': 'ar'},
    );

    radios = parseRadios(data);
    notifyListeners();
  }

  void playRadio(RadioStation radio) async {
    currentRadio = radio;

    await player.stop();
    await player.play(
      UrlSource(radio.url),
      volume: isMuted ? 0 : 1, // اضبط حجم الصوت حسب حالة الميوت
    );

    isPlaying = true;
    notifyListeners();
  }

  void stopRadio() async {
    await player.stop();
    isPlaying = false;
    notifyListeners();
  }

  void muteSound() {
    isMuted = !isMuted;
    player.setVolume(isMuted ? 0 : 1);
    notifyListeners();
  }
}