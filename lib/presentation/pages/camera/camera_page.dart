import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sideeye/presentation/controllers/camera/camera_controller.dart';

class CameraPage extends GetView<CameraController> {
  const CameraPage({super.key});

  static const routeName = '/camera';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Camera')),
      body: const Center(child: Text('Camera setup is coming soon.')),
    );
  }
}
