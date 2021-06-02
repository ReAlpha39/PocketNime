import 'package:anipocket/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anipocket"),
      ),
      body: Container(
        width: context.width,
        height: context.height,
        child: Obx(
          () => _homeController.seasonAnime.value.animeList == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Scrollbar(
                  child: ListView.builder(
                    itemCount:
                        _homeController.seasonAnime.value.animeList!.length,
                    itemBuilder: (context, index) =>
                        _homeController.loadSeasonAnimeWidget(index),
                  ),
                ),
        ),
      ),
    );
  }
}
