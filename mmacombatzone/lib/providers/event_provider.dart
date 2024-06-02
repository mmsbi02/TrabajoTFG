import 'package:flutter/material.dart';
import 'package:mmacombatzone/models/event_response.dart';
import 'package:http/http.dart' as http;


 class EventProvider extends ChangeNotifier{

//   String _apiKey = '2ab844d32a9e4e76bd079b49777eb348';
//   String _baseURL = 'api.sportsdata.io';
//   String _language = 'es-ES';

//   List<EventResponse> onDisplayEvents = [];
//   List<EventResponse> popularMovies = [];

//   int _popularPage = 0;

//   EventProvider(){
//     getOnDisplayEvents();
//   }

//  Future<String> _getJsonData(String endpoint, [int page = 1]) async{
//   var url = Uri.https(_baseURL, endpoint, {
//       'api_key':_apiKey,
//       'language':_language,
//       'page': '$page',
//     });

  
//     final response = http.get(url);
//     return response.body;

//   }
//   getOnDisplayEvents() async {

//     final jsonData = await _getJsonData('v3/mma/scores/json/Event');

//     final nowPlayingFights = EventResponse.fromJson(jsonData);

//     onDisplayEvents = nowPlayingFights.fights;
//     notifyListeners();


//   }





 


 }
