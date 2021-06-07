import 'package:anipocket/routes/home_binding.dart';
import 'package:anipocket/routes/routes.dart';
import 'package:anipocket/utils/custom_material_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anipocket',
      getPages: Routes.route,
      initialRoute: routeName.reverse[RouteName.HOMEPAGE],
      initialBinding: HomeBinding(),
      theme: ThemeData(
        primarySwatch: customMaterialColor(Color(0xff00838f)),
      ),
    );
  }
}
