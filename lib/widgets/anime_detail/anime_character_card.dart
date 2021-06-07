import 'package:anipocket/widgets/anime_detail/anime_main_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeCharacterCard extends StatelessWidget {
  final String? charName;
  final String? imageUrlChar;
  final String? imageUrlSeiyuu;
  final String? seiyuuName;
  final String? language;
  final String nullMessage;
  AnimeCharacterCard({
    Key? key,
    this.charName,
    this.seiyuuName,
    this.nullMessage = "none",
    this.imageUrlChar,
    this.imageUrlSeiyuu,
    this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: Get.width < 360
            ? 60
            : Get.width < 450
                ? 80
                : 100,
        width: Get.width <= 900
            ? 500
            : Get.width <= 1100
                ? 420
                : 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                BoxImage(
                  pathPicture: imageUrlChar,
                ),
                Container(
                  width: Get.width < 450
                      ? 100
                      : Get.width >= 900
                          ? 100
                          : null,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    charName!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: Get.width < 450
                      ? 100
                      : Get.width >= 900
                          ? 100
                          : null,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    seiyuuName!,
                    maxLines: 2,
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.clip,
                  ),
                ),
                BoxImage(
                  imageOnLeft: false,
                  pathPicture: imageUrlSeiyuu,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
