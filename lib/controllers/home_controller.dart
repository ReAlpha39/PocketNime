import 'package:anipocket/models/constant.dart';
import 'package:anipocket/models/tops.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  JikanApi _jikanApi = JikanApi();
  Rx<Tops> tops = Tops().obs;

  @override
  void onInit() {
    _loadTopsData();
    super.onInit();
  }

  void _loadTopsData() async {
    try {
      tops.value = await _jikanApi.getTop(TopType.ANIME);
      tops.refresh();
    } catch (e) {
      _showDialog(title: "Error", middleText: "Cannot load data");
    }
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
