import 'package:flutter/material.dart';
import 'package:wgmainsite/routes/routes.dart';
import '../apptheme.dart';
import 'navigation_widget.dart';
import 'package:flutter/cupertino.dart';

import 'help/navigation_widget_help.dart';

class NavigationBarWeb extends StatefulWidget {
  @override
  _NavigationBarWebState createState() => _NavigationBarWebState();
}

class _NavigationBarWebState extends State<NavigationBarWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTheme.scaffoldBackgroundColor,
      width: 250.0,
      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(image: AssetImage('assets/logo_hd.png')),
          Column(
            crossAxisAlignment : CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height : 1,
              ),
              NavigationItem(
                title: 'Home',
                routeName: routeHome,
              ),
              Container(
                height : 1,
              ),
              NavigationItemHelp(
                title: 'Help',
                routeName: routeHelp,
              ),
              Container(
                height : 1,
              ),
              NavigationItem(
                title: 'Scoreboard',
                routeName: routeScoreboard,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
