import 'package:anipocket/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anipocket"),
      ),
      body: Center(
        child: Obx(
          () => _homeController.tops.value.top == null
              ? CircularProgressIndicator()
              : Container(
                  child: Text(
                    _homeController.tops.value.top!.length.toString(),
                  ),
                ),
        ),
      ),
    );
  }
}
