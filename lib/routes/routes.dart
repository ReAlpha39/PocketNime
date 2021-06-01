import 'package:anipocket/models/type.dart';
import 'package:anipocket/routes/home_binding.dart';
import 'package:anipocket/views/home_page.dart';
import 'package:get/get.dart';

enum RouteName { HOMEPAGE }

final routeName = EnumValues({'/home_page': RouteName.HOMEPAGE});

class Routes {
  static final route = [
    GetPage(
      name: routeName.reverse[RouteName.HOMEPAGE]!,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
