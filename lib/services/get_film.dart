import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mulai_flutter/config/config.dart';
import 'package:mulai_flutter/model/film_model.dart';
import 'package:mulai_flutter/model/popular_film_response_mode.dart';

class GetFilm {
  Future<List<FilmModel>> getPopularFilm() async {
    var url = Uri.parse('${baseUrl}movie/popular?api_key=$apiKey');
    print(url);

    var response = await http.get(url);
    print(response.body);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      PopularFilmResponseModel popularFilmResponseModel =
          PopularFilmResponseModel.fromJson(jsonResponse);

      return popularFilmResponseModel.results ?? [];
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return [];
    }
  }

  Future<List<FilmModel>> getTopRatedFilm() async {
    var url = Uri.parse('${baseUrl}movie/top_rated');
    print(url);

    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer tokenkalian',
    });
    print(response.body);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      PopularFilmResponseModel popularFilmResponseModel =
          PopularFilmResponseModel.fromJson(jsonResponse);

      return popularFilmResponseModel.results ?? [];
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return [];
    }
  }

  // 100 Succes tapi masih diproses
  // 200 Sucess
  // 300 Error
  // 400 Error dari API
  // 500 Error Server
}
