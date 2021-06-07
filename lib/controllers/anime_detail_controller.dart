import 'package:anipocket/models/anime/anime_description.dart';
import 'package:anipocket/models/anime/genre.dart';
import 'package:anipocket/models/character_staff/character_staff.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:anipocket/utils/custom_material_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AnimeDetailController extends GetxController {
  JikanApi _jikanApi = JikanApi();
  final dateFormat = DateFormat('MMM dd, yyyy');
  final numberFormat = NumberFormat('###,###');
  Rx<AnimeDescription> anime = AnimeDescription().obs;
  Rx<CharacterStaff> charStaff = CharacterStaff().obs;

  @override
  void onReady() {
    _loadAnimeDescription();
    super.onReady();
  }

  void _loadAnimeDescription() async {
    try {
      var argument = Get.arguments.toString();
      var temp = await _jikanApi.getAnimeDescription(argument);
      var tempB = await _jikanApi.getAnimeCharacterStaff(argument);
      if (temp.malId != null && tempB.requestHash != null) {
        anime.value = temp;
        anime.refresh();
        charStaff.value = tempB;
        charStaff.refresh();
      } else {
        _showDialog(
          title: 'Error',
          middleText: 'Cannot fetch data, error: data null',
        );
      }
    } catch (e) {
      print(e);
      _showDialog(
        title: 'Error',
        middleText: 'Cannot fetch data, error: ' + e.toString(),
      );
    }
  }

  String listGenre(List<Genre>? data) {
    String temp = "";
    if (data != null) {
      for (int i = 0; i <= data.length - 1; i++) {
        temp += data[i].name!;
        if (i != data.length - 1) {
          temp += ", ";
        }
      }
    }
    if (temp == "") {
      temp = "none found";
    }
    return temp;
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
      buttonColor: primaryColor,
      confirmTextColor: Colors.black87,
      onConfirm: () {
        Navigator.of(Get.overlayContext!).pop();
      },
    );
  }
}
