import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeMainCard extends StatelessWidget {
  final AnimeDetailController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: Get.width < 400 ? 200 : 220,
        width: Get.width <= 900
            ? 500
            : Get.width <= 1100
                ? 400
                : 500,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => BoxImage(
                pathPicture: _controller.anime.value.imageUrl,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _controller.anime.value.title == null
                      ? Container()
                      : Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Colors.grey.shade100,
                          width: double.infinity,
                          child: Text(
                            _controller.anime.value.title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                  _controller.anime.value.titleJapanese == null
                      ? Container()
                      : Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Japanese",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                _controller.anime.value.titleJapanese!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                  _controller.anime.value.titleEnglish == null
                      ? Container()
                      : Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "English",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                _controller.anime.value.titleEnglish!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoxImage extends StatelessWidget {
  final String? pathPicture;
  final bool imageOnLeft;

  const BoxImage({
    Key? key,
    this.pathPicture,
    this.imageOnLeft = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: imageOnLeft ? Radius.circular(8) : Radius.zero,
          bottomLeft: imageOnLeft ? Radius.circular(8) : Radius.zero,
          topRight: imageOnLeft ? Radius.zero : Radius.circular(8),
          bottomRight: imageOnLeft ? Radius.zero : Radius.circular(8),
        ),
        child: pathPicture != "" && pathPicture != null
            ? FadeInImage.assetNetwork(
                placeholder: 'assets/circular_progress.gif',
                image: pathPicture!,
                fit: BoxFit.cover,
              )
            : Container(),
      ),
    );
  }
}
