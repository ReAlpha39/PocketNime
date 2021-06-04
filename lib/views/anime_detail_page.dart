import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:anipocket/utils/custom_material_color.dart';
import 'package:anipocket/widgets/anime_detail/anime_main_card.dart';
import 'package:anipocket/widgets/anime_detail/anime_overview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeDetailPage extends StatelessWidget {
  final AnimeDetailController _controller = Get.find();
  final argument = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: customMaterialColor(primaryColor).shade50,
        ),
        primaryIconTheme: IconThemeData(color: Colors.black),
      ),
      child: Scaffold(
        backgroundColor: customMaterialColor(primaryColor).shade50,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              title: Obx(
                () => Text(
                  _controller.anime.value.title == null
                      ? 'Loading...'
                      : _controller.anime.value.title!,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Obx(
                  () => _controller.anime.value.title == null
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: AnimeMainCard(),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 24),
                  child: Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                AnimeOverview(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Obx(
                    () => _controller.anime.value.synopsis == null
                        ? Container()
                        : Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(_controller.anime.value.synopsis!),
                            ),
                          ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
