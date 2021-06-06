import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:anipocket/widgets/anime_detail/anime_overview_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeOverview extends StatefulWidget {
  @override
  _AnimeOverviewState createState() => _AnimeOverviewState();
}

class _AnimeOverviewState extends State<AnimeOverview> {
  final AnimeDetailController _controller = Get.find();
  ScrollController? _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: Obx(
        () => _controller.anime.value.title == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(
                      "Information",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Scrollbar(
                    controller: _scrollController,
                    isAlwaysShown: GetPlatform.isWeb || GetPlatform.isDesktop
                        ? true
                        : false,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Obx(
                          () => _controller.anime.value.title == null
                              ? Container()
                              : Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    AnimeOverviewCard(
                                      titleCard: "Type",
                                      value: _controller.anime.value.type,
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Episodes",
                                      value: _controller.anime.value.episodes ==
                                              null
                                          ? '0'
                                          : _controller.anime.value.episodes
                                              .toString(),
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Duration",
                                      value: _controller.anime.value.duration,
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Status",
                                      value: _controller.anime.value.status,
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Aired",
                                      value: _controller.dateFormat.format(
                                              _controller
                                                  .anime.value.aired!.from!) +
                                          " ~ " +
                                          (_controller.anime.value.aired!.to ==
                                                  null
                                              ? "?"
                                              : _controller.dateFormat.format(
                                                  _controller
                                                      .anime.value.aired!.to!)),
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Premiered",
                                      value: _controller.anime.value.premiered,
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Broadcast",
                                      value: _controller.anime.value.broadcast,
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Producers",
                                      value: _controller.listGenre(
                                          _controller.anime.value.producers),
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Licensors",
                                      value: _controller.listGenre(
                                          _controller.anime.value.licensors),
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Studio",
                                      value: _controller.listGenre(
                                          _controller.anime.value.studios),
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Source",
                                      value: _controller.anime.value.source,
                                    ),
                                    AnimeOverviewCard(
                                      titleCard: "Rating",
                                      value: _controller.anime.value.rating,
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
