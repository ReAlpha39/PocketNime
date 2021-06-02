import 'package:anipocket/models/anime/genre.dart';
import 'package:anipocket/models/season/season_anime.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:anipocket/widgets/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  JikanApi _jikanApi = JikanApi();
  Rx<SeasonAnime> seasonAnime = SeasonAnime().obs;

  @override
  void onInit() {
    _loadTopsData();
    super.onInit();
  }

  void _loadTopsData() async {
    try {
      seasonAnime.value = await _jikanApi.getSeasonAnime();
      seasonAnime.refresh();
    } catch (e) {
      _showDialog(title: "Error", middleText: "Cannot load data");
    }
  }

  Widget loadSeasonAnimeWidget(int index) {
    if (seasonAnime.value.animeList![index].r18 == false) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: AnimeCard(
          index: index,
        ),
      );
    } else {
      return Container();
    }
  }

  String cardGenre(List<Genre> listGenre) {
    String genre = '';
    for (int i = 0; i <= listGenre.length - 1; i++) {
      if (listGenre.length - 1 == i) {
        genre += listGenre[i].name!;
      } else {
        genre += listGenre[i].name! + ' • ';
      }
    }
    return genre;
  }

  void _closeCurrentDialog() {
    if (Get.isDialogOpen!) {
      Navigator.of(Get.overlayContext!).pop();
    }
  }

  void _showDialog({required String title, required String middleText}) {
    _closeCurrentDialog();
    Get.defaultDialog(
      barrierDismissible: false,
      titleStyle: TextStyle(fontSize: 24),
      middleTextStyle: TextStyle(fontSize: 18),
      title: title,
      middleText: middleText,
      textConfirm: 'OK',
      radius: 17,
      buttonColor: Colors.yellow.shade600,
      confirmTextColor: Colors.black87,
      onConfirm: () {
        Navigator.of(Get.overlayContext!).pop();
      },
    );
  }
}
