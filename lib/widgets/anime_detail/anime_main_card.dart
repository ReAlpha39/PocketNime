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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 220),
              child: BoxImage(
                pathPicture: _controller.anime.value.imageUrl,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _controller.anime.value.titleJapanese == null
                    ? Container()
                    : Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.grey.shade200,
                        width: double.infinity,
                        child: Text(
                          _controller.anime.value.titleJapanese!,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                _controller.anime.value.titleEnglish == null
                    ? Container()
                    : Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.grey.shade100,
                        child: Text(
                          _controller.anime.value.titleEnglish!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoxImage extends StatelessWidget {
  final String? pathPicture;

  const BoxImage({Key? key, this.pathPicture}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        child: pathPicture != "" && pathPicture != null
            ? Image.network(
                pathPicture!,
                loadingBuilder: (context, child, progress) {
                  return progress == null ? child : LinearProgressIndicator();
                },
                fit: BoxFit.cover,
              )
            : Container(),
      ),
    );
  }
}
