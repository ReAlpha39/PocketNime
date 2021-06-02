import 'package:anipocket/controllers/anime_detail_controller.dart';
import 'package:get/get.dart';

class AnimeDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AnimeDetailController>(AnimeDetailController());
  }
}
