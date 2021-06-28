import 'package:flutter/material.dart';
import 'package:flutter_web_project/constants/controllers.dart';
import 'package:flutter_web_project/helpers/responsiveness.dart';
import 'package:flutter_web_project/pages/overview/widgets/overview_card_large.dart';
import 'package:flutter_web_project/pages/overview/widgets/overview_card_medium.dart';
import 'package:flutter_web_project/pages/overview/widgets/overview_card_small.dart';
import 'package:flutter_web_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  OverviewCardsMediumScreenSizes()
                else
                  OverviewCardsLargeScreen()
              else
                OverviewCardsSmallScreen()
            ],
          ),
        )
      ],
    );
  }
}
