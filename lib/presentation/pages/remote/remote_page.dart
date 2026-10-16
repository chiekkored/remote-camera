import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sideeye/presentation/controllers/remote/remote_controller.dart';

class RemotePage extends GetView<RemoteController> {
  const RemotePage({super.key});

  static const routeName = '/remote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Remote')),
      body: const Center(child: Text('Remote setup is coming soon.')),
    );
  }
}
