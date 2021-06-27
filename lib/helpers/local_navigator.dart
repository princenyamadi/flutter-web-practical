import 'package:flutter/widgets.dart';
import 'package:flutter_web_project/constants/controllers.dart';
import 'package:flutter_web_project/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: naviagtionController.navigationKey,
      initialRoute: OverViewPageRoute,
    );
