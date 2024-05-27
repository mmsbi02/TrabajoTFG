import 'package:flutter/material.dart';
class FighterProvider extends ChangeNotifier{

  String _apiKey = '49ddc4d645000a75b19e7f51b7bebbad';
  String _baseURL = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  int _popularPage = 0;

  MoviesProvider(){
    print('MoviesProvider inicializado');

    this.getOnDisplayMOvies();
    this.getPopularMovies();
  }

 Future<String> _getJsonData(String endpoint, [int page = 1]) async{
  var url = Uri.https(_baseURL, endpoint, {
      'api_key':_apiKey,
      'language':_language,
      'page': '$page',
    });

  
    final response = await http.get(url);
    return response.body;

  }
  



  getOnDisplayMOvies() async {

    final jsonData = await _getJsonData('3/movie/now_playing');

    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);

    

    //print(nowPlayingResponse.results[1].title);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();


  }

   getPopularMovies() async {

    _popularPage++;

    final jsonData = await _getJsonData('3/movie/popular',_popularPage);

    final popularRespones = PopularResponse.fromJson(jsonData);

    

    //print(nowPlayingResponse.results[1].title);

    popularMovies = [...popularMovies,...popularRespones.results];
    notifyListeners();

   }


}
