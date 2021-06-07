import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeRating extends StatelessWidget {
  final AnimeDetailController _controller = Get.find();
  AnimeRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _controller.anime.value.title == null
          ? Container()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Rating",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      height: 140,
                      width: Get.width <= 900
                          ? 500
                          : Get.width <= 1100
                              ? 400
                              : 500,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.only(right: 8.0),
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Score",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Obx(
                                      () => _controller.anime.value.score ==
                                              null
                                          ? _noData(fontSize: 26)
                                          : Flexible(
                                              child: Text(
                                                _controller.anime.value.score
                                                    .toString(),
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  fontSize: Get.width <= 350
                                                      ? 20
                                                      : 30,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 85,
                              color: Colors.black26,
                              width: 1,
                            ),
                            Expanded(
                              flex: Get.width < 380 ? 6 : 3,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 4,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Scored by",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "Ranked",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "Popularity",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "Favorites",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "Members",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Obx(
                                            () => _controller
                                                        .anime.value.scoredBy ==
                                                    null
                                                ? _noData()
                                                : Text(
                                                    _controller.numberFormat
                                                            .format(
                                                          _controller.anime
                                                              .value.scoredBy,
                                                        ) +
                                                        " users",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                          ),
                                          Obx(
                                            () => _controller
                                                        .anime.value.rank ==
                                                    null
                                                ? _noData()
                                                : Text(
                                                    "#" +
                                                        _controller
                                                            .anime.value.rank!
                                                            .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                          ),
                                          Obx(
                                            () => _controller.anime.value
                                                        .popularity ==
                                                    null
                                                ? _noData()
                                                : Text(
                                                    "#" +
                                                        _controller.anime.value
                                                            .popularity!
                                                            .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                          ),
                                          Obx(
                                            () => _controller.anime.value
                                                        .favorites ==
                                                    null
                                                ? _noData()
                                                : Text(
                                                    _controller
                                                        .anime.value.favorites!
                                                        .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                          ),
                                          Obx(
                                            () => _controller
                                                        .anime.value.members ==
                                                    null
                                                ? _noData()
                                                : Text(
                                                    _controller.numberFormat
                                                        .format(_controller
                                                            .anime
                                                            .value
                                                            .members!),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _noData({double fontSize = 14}) {
    return Text(
      "?",
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
