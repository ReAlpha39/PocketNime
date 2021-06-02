import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeDetailPage extends StatelessWidget {
  final AnimeDetailController _controller = Get.find();
  final argument = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(argument.toString()),
      ),
      body: Container(),
    );
  }
}
