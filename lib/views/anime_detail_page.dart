import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:anipocket/utils/custom_material_color.dart';
import 'package:anipocket/widgets/anime_detail/anime_characters.dart';
import 'package:anipocket/widgets/anime_detail/anime_main_card.dart';
import 'package:anipocket/widgets/anime_detail/anime_overview.dart';
import 'package:anipocket/widgets/anime_detail/anime_rating.dart';
import 'package:anipocket/widgets/anime_detail/anime_synopsis.dart';
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
          backgroundColor: customMaterialColor(Color(0xffe0f7fa)).shade50,
        ),
        primaryIconTheme: IconThemeData(color: Colors.black),
      ),
      child: Scaffold(
        backgroundColor: customMaterialColor(Color(0xffe0f7fa)).shade50,
        body: LayoutBuilder(
          builder: (context, constraint) => CustomScrollView(
            physics: BouncingScrollPhysics(),
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
              Obx(
                () => _controller.anime.value.title == null
                    ? SliverList(
                        delegate: SliverChildListDelegate([
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Color(0xff00838f),
                              ),
                            ),
                          )
                        ]),
                      )
                    : constraint.maxWidth <= 1070
                        ? _listCard()
                        : _gridCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gridCard() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => _controller.anime.value.title == null
                  ? Container()
                  : Column(
                      children: [
                        AnimeMainCard(),
                        AnimeRating(),
                        AnimeOverview(),
                      ],
                    ),
            ),
            Column(
              children: [
                AnimeSynopsis(),
                Obx(
                  () => _controller.charStaff.value.characters == null
                      ? Container()
                      : AnimeCharacters(),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  Widget _listCard() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Obx(
          () => _controller.anime.value.title == null
              ? Container()
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: AnimeMainCard(),
                  ),
                ),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimeRating(),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimeOverview(),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimeSynopsis(),
        ),
        Align(
          alignment: Alignment.center,
          child: Obx(
            () => _controller.charStaff.value.characters == null
                ? Container()
                : AnimeCharacters(),
          ),
        ),
      ]),
    );
  }
}
