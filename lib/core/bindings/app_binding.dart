import 'package:get/get.dart';
import 'package:sideeye/core/services/app_logger.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AppLogger>(const DeveloperAppLogger(), permanent: true);
  }
}
