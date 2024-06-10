import 'package:flutter/material.dart';
import 'package:mmacombatzone/helpers/debouncer.dart';
import 'package:mmacombatzone/models/fighter_response.dart';
import 'package:http/http.dart' as http;

class FighterProvider extends ChangeNotifier {
  final String _apiKey = '2ab844d32a9e4e76bd079b49777eb348';
  final String _baseURL = 'api.sportsdata.io';
  final String _language = 'es-ES';

  List<FighterResponse> onDisplayFighterResponse = [];

  int _popularPage = 0;
final debouncer = Debouncer(
  duration: const Duration(milliseconds: 500),
);
  FighterProvider() {
    getOnDisplayFighter();
  }

  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    var url = Uri.https(_baseURL, endpoint, {
      'api_key': _apiKey,
      'language': _language,
      'page': '$page',
    });

    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayFighter() async {
    final jsonData = await _getJsonData('v3/mma/scores/json/Fighter');

    final nowPlayingResponse = FighterResponse.fromJson(jsonData);
    onDisplayFighterResponse = nowPlayingResponse.fighterId;
    notifyListeners();
  }
}
