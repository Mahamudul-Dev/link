import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/controllers/call_controllers/random_call_controller.dart';
import 'package:link/styles/link_colors.dart';
import 'package:link/widgets/random_call_settings_sheet.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class RandomCallScreen extends StatefulWidget {
  RandomCallScreen() : super();

  @override
  State<RandomCallScreen> createState() => _RandomCallScreenState();
}

class _RandomCallScreenState extends State<RandomCallScreen> {
  final RandomCallController controller = Get.put(RandomCallController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingAnimationWidget.threeRotatingDots(
                      color: pictonBlue, size: 80.0),
                  const Text(
                    'Searching best match!',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: platinum),
                  )
                ],
              )),
            )
          ],
        ),
        bottomSheet: Obx(() => Visibility(
            visible: controller.showAdvanceSheet.value,
            child: RandomCallSettingsSheet(
              controller: controller,
            ))));
  }
}

Widget buildAvater(double height, double width, double radius) {
  return AnimatedContainer(
    width: width,
    height: height,
    decoration: const BoxDecoration(shape: BoxShape.circle),
    duration: const Duration(milliseconds: 200),
    padding: const EdgeInsets.all(15.0),
    child: Center(
      child: AvatarGlow(
        animate: true,
        endRadius: width * 2,
        shape: BoxShape.circle,
        glowColor: platinum,
        child: CircleAvatar(
          radius: radius,
        ),
      ),
    ),
  );
}
