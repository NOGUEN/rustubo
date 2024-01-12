import 'package:flutter/material.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/components/landing_list_cells/landing_introduce.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/components/landing_list_cells/landing_title.dart';

class LandingList extends StatelessWidget {
  const LandingList({super.key, required this.controller});

  final LandingPageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LandingTitle(),
        LandingIntroduce(),
      ],
    );
  }
}
