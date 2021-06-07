import 'package:anipocket/controllers/home_controller.dart';
import 'package:anipocket/models/type.dart';
import 'package:anipocket/routes/routes.dart';
import 'package:anipocket/utils/custom_material_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeCard extends StatelessWidget {
  final HomeController _homeController = Get.find();
  final int? index;

  AnimeCard({Key? key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: customMaterialColor(primaryColor).shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => Get.toNamed(
          routeName.reverse[RouteName.ANIMEDETAIL]!,
          arguments: _homeController.seasonAnime.value.animeList![index!].malId,
        ),
        child: Container(
          constraints: BoxConstraints(maxWidth: 450),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Row(
            children: <Widget>[
              PartCardImage(
                imageUrl: _homeController
                    .seasonAnime.value.animeList![index!].imageUrl,
              ),
              Expanded(
                child: Container(
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                              ),
                              color: customMaterialColor(Color(0xffcfd8dc))
                                  .shade200,
                            ),
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(_homeController.seasonAnime.value
                                          .animeList![index!].title! ==
                                      'null'
                                  ? 'Unknown'
                                  : _homeController.seasonAnime.value
                                      .animeList![index!].title!),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 6,
                              bottom: 6,
                            ),
                            width: double.infinity,
                            color:
                                customMaterialColor(Color(0xffcfd8dc)).shade50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  animeTypeValues.reverse[_homeController
                                                  .seasonAnime
                                                  .value
                                                  .animeList![index!]
                                                  .type!]!
                                              .toString() ==
                                          'null'
                                      ? 'Unknown'
                                      : animeTypeValues.reverse[_homeController
                                          .seasonAnime
                                          .value
                                          .animeList![index!]
                                          .type!]!,
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  _homeController.seasonAnime.value
                                              .animeList![index!].score
                                              .toString() ==
                                          'null'
                                      ? 'No score available'
                                      : _homeController.seasonAnime.value
                                          .animeList![index!].score
                                          .toString(),
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Container(
                            color:
                                customMaterialColor(Color(0xffeceff1)).shade50,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 8,
                              ),
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: Text(
                                  _homeController.seasonAnime.value
                                      .animeList![index!].synopsis!,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: customMaterialColor(Color(0xffcfd8dc)).shade50,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              _homeController.cardGenre(_homeController
                                  .seasonAnime
                                  .value
                                  .animeList![index!]
                                  .genres!),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                wordSpacing: 2,
                              ),
                            ),
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
      ),
    );
  }
}

class PartCardImage extends StatelessWidget {
  final String? imageUrl;

  const PartCardImage({Key? key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/circular_progress.gif',
          image: imageUrl!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
