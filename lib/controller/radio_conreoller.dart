import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:ishraq/core/network/api_services.dart';
import 'package:ishraq/core/network/const.dart';
import 'package:ishraq/features/home/models/radio_model.dart';

class RadioController extends ChangeNotifier {
  final ApiClient _apiClient = ApiClient();
  final AudioPlayer player = AudioPlayer();

  List<RadioStation> radios = [];

  RadioStation? currentRadio;

  bool isPlaying = false;
  bool isMuted = false;
  bool isLoading = false;
  String? errorMessage;

  // ================= FETCH RADIOS =================
  Future<void> fetchRadios() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final data = await _apiClient.get(
        ApiConstants.radios,
        baseUrl: ApiConstants.mp3QuranBaseUrl,
        query: {'language': 'ar'},
      );

      radios = parseRadios(data);
    } catch (e) {
      radios = [];
      errorMessage = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  // ================= PLAY =================
  Future<void> playRadio(RadioStation radio) async {
    try {
      currentRadio = radio;

      await player.stop();
      await player.play(
        UrlSource(radio.url),
        volume: isMuted ? 0 : 1,
      );

      isPlaying = true;
      notifyListeners();
    } catch (e) {
      debugPrint("PLAY ERROR: $e");
    }
  }

  // ================= STOP =================
  Future<void> stopRadio() async {
    await player.stop();
    isPlaying = false;
    notifyListeners();
  }

  // ================= MUTE =================
  void muteSound() {
    isMuted = !isMuted;
    player.setVolume(isMuted ? 0 : 1);
    notifyListeners();
  }
}