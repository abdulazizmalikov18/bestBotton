import 'package:flutter/material.dart';
import 'package:birpastga/screens/advanced_screen.dart';
import 'package:birpastga/screens/buttons_screen.dart';
import 'package:birpastga/screens/primary_button_screen.dart';
import 'package:birpastga/screens/secondary_button_screen.dart';
import 'package:birpastga/widgets/pop_screen_wrapper.dart';

class PopShowCase extends StatelessWidget {
  const PopShowCase({Key? key, this.initialIndex = 0}) : super(key: key);

  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: initialIndex);

    return PopScreenWrapper(
      child: PageView(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        children: [
          PopButtonScreen(controller: controller),
          PopPrimaryBtnScreen(controller: controller),
          PopSecondaryBtnScreen(controller: controller),
          PopAdvancedScreen(controller: controller),
        ],
      ),
    );
  }
}
