import 'package:anipocket/controllers/home_controller.dart';
import 'package:anipocket/utils/custom_material_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customMaterialColor(primaryColor).shade50,
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text("Anipocket"),
        ),
      ),
      body: Container(
        height: context.height,
        child: Obx(
          () => _homeController.seasonAnime.value.animeList == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (OverscrollIndicatorNotification overscroll) {
                    overscroll.disallowGlow();
                    return true;
                  },
                  child: Scrollbar(
                    isAlwaysShown: GetPlatform.isWeb || GetPlatform.isDesktop
                        ? true
                        : false,
                    child: Center(
                      child: Container(
                        width: 1600,
                        child: LayoutBuilder(
                          builder: (context, constraint) {
                            if (constraint.maxWidth <= 600) {
                              return _cardGridView(1);
                            } else if (constraint.maxWidth <= 1200) {
                              return _cardGridView(2);
                            } else {
                              return _cardGridView(3);
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _cardGridView(int crossAxisCount) {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
      child: StaggeredGridView.countBuilder(
        addAutomaticKeepAlives: false,
        itemCount: _homeController.seasonAnime.value.animeList!.length,
        itemBuilder: (context, index) =>
            _homeController.loadSeasonAnimeWidget(index),
        crossAxisCount: crossAxisCount,
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
