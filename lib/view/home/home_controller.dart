import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:mulai_flutter/config/config.dart';
import 'package:mulai_flutter/model/film_model.dart';
import 'package:mulai_flutter/services/get_film.dart';

class HomeController extends GetxController {
  List<FilmModel> listOfPopularFilm = [];
  List<FilmModel> listOfTopRatedFilm = [];

  RxInt currentIndex = 0.obs;
  RxBool isLoading = true.obs;

  getFilm() async {
    listOfPopularFilm = await GetFilm().getPopularFilm();
    listOfTopRatedFilm = await GetFilm().getTopRatedFilm();
    listOfPopularFilmData = listOfPopularFilm;
    listOfTopRatedFilmData = listOfTopRatedFilm;
    isLoading.value = false;
  }
}
