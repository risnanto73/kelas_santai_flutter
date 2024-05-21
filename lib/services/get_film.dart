import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mulai_flutter/config/config.dart';
import 'package:mulai_flutter/model/credits_film_model.dart';
import 'package:mulai_flutter/model/detail_film_model.dart';
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
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyNjZjMGJjMWM4MTQ5Mzk5MGQ5NDIyMTk2MTE0N2ZkNCIsInN1YiI6IjY2MjRlYmFlY2I2ZGI1MDE2M2FlMWQxNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.GS6TUTpHhL2A9kz7a4-kb2kv0I6j8Z4UZz335Bk-bxs',
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

  Future<DetailFilmModel> getDetailFilm(String id) async {
    var url = Uri.parse('${baseUrl}movie/$id?api_key=$apiKey');
    print(url);

    final response = await http.get(url);
    print(response.body);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      DetailFilmModel detailFilmModel = DetailFilmModel.fromJson(jsonResponse);

      return detailFilmModel;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return DetailFilmModel();
    }
  }

  Future<CreditsFilmModel> getCreditsFilm(String id) async {
    var url = Uri.parse('${baseUrl}movie/$id/credits?api_key=$apiKey');
    print(url);

    final response = await http.get(url);
    print(response.body);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      CreditsFilmModel creditsFilmModel =
          CreditsFilmModel.fromJson(jsonResponse);

      return creditsFilmModel;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return CreditsFilmModel();
    }
  }

  // 100 Succes tapi masih diproses
  // 200 Sucess
  // 300 Error
  // 400 Error dari API
  // 500 Error Server
}
