import 'package:get/get.dart';
import 'package:sideeye/presentation/controllers/camera/camera_controller.dart';
import 'package:sideeye/presentation/controllers/navigation/home_controller.dart';
import 'package:sideeye/presentation/controllers/remote/remote_controller.dart';
import 'package:sideeye/presentation/pages/camera/camera_page.dart';
import 'package:sideeye/presentation/pages/navigation/home_page.dart';
import 'package:sideeye/presentation/pages/remote/remote_page.dart';

abstract final class AppRoutes {
  static final pages = <GetPage<dynamic>>[
    GetPage(
      name: HomePage.routeName,
      page: HomePage.new,
      binding: BindingsBuilder(() => Get.lazyPut(HomeController.new)),
    ),
    GetPage(
      name: CameraPage.routeName,
      page: CameraPage.new,
      binding: BindingsBuilder(() => Get.lazyPut(CameraController.new)),
    ),
    GetPage(
      name: RemotePage.routeName,
      page: RemotePage.new,
      binding: BindingsBuilder(() => Get.lazyPut(RemoteController.new)),
    ),
  ];
}
