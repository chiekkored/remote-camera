import 'package:get/get.dart';
import 'package:sideeye/presentation/pages/camera/camera_page.dart';
import 'package:sideeye/presentation/pages/remote/remote_page.dart';

class HomeController extends GetxController {
  void openCamera() => Get.toNamed(CameraPage.routeName);
  void openRemote() => Get.toNamed(RemotePage.routeName);
}
