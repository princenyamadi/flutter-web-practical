import 'package:flutter/material.dart';
import 'package:flutter_web_project/helpers/responsiveness.dart';
import 'package:flutter_web_project/widgets/large_screen.dart';
import 'package:flutter_web_project/widgets/side_menu.dart';
import 'package:flutter_web_project/widgets/small_screen.dart';

import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNaviagtionBar(context, scaffoldKey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        body: ResponsiveWidget(
            largeScreen: LargeScreen(), smallScreen: SmallScreen()));
  }
}
