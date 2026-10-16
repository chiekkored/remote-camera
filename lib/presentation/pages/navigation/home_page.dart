import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sideeye/presentation/common/design_system/app_theme.dart';
import 'package:sideeye/presentation/common/widgets/role_button.dart';
import 'package:sideeye/presentation/controllers/navigation/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SideEye')),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Choose this phone’s role',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: AppSpacing.extraLarge),
                  RoleButton(
                    label: 'Camera',
                    description: 'Use this phone to shoot',
                    icon: Icons.camera_alt_outlined,
                    onPressed: controller.openCamera,
                  ),
                  const SizedBox(height: AppSpacing.medium),
                  RoleButton(
                    label: 'Remote',
                    description: 'Control another phone',
                    icon: Icons.settings_remote_outlined,
                    onPressed: controller.openRemote,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
