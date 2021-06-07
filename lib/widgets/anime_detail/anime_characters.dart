import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:anipocket/widgets/anime_detail/anime_character_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeCharacters extends StatelessWidget {
  final AnimeDetailController _controller = Get.find();
  AnimeCharacters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _controller.charStaff.value.characters!.length == 0
          ? Container()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List<Widget>.generate(
                  _controller.charStaff.value.characters!.length - 1,
                  (index) => AnimeCharacterCard(
                    charName:
                        _controller.charStaff.value.characters![index].name,
                    seiyuuName: _controller.charStaff.value.characters![index]
                                .voiceActors!.length ==
                            0
                        ? ""
                        : _controller.charStaff.value.characters![index]
                            .voiceActors![0].name,
                    imageUrlChar:
                        _controller.charStaff.value.characters![index].imageUrl,
                    imageUrlSeiyuu: _controller.charStaff.value
                                .characters![index].voiceActors!.length ==
                            0
                        ? null
                        : _controller.charStaff.value.characters![index]
                            .voiceActors![0].imageUrl,
                  ),
                )
                  ..insert(
                    0,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Characters",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                  ..toList(),
              ),
            ),
    );
  }
}
