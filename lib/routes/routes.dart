import 'package:anipocket/models/type.dart';
import 'package:anipocket/routes/anime_detail_binding.dart';
import 'package:anipocket/routes/home_binding.dart';
import 'package:anipocket/views/anime_detail_page.dart';
import 'package:anipocket/views/home_page.dart';
import 'package:get/get.dart';

enum RouteName { HOMEPAGE, ANIMEDETAIL }

final routeName = EnumValues({
  '/home_page': RouteName.HOMEPAGE,
  '/anime_detail': RouteName.ANIMEDETAIL,
});

class Routes {
  static final route = [
    GetPage(
      name: routeName.reverse[RouteName.HOMEPAGE]!,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: routeName.reverse[RouteName.ANIMEDETAIL]!,
      page: () => AnimeDetailPage(),
      binding: AnimeDetailBinding(),
    ),
  ];
}
