import 'package:flutter/material.dart';
import 'package:flutter_web_project/helpers/local_navigator.dart';
import 'package:flutter_web_project/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: SideMenu(),
          ),
        ),
        Expanded(flex: 5, child: localNavigator())
      ],
    );
  }
}
