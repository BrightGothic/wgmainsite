import 'package:flutter/material.dart';
import 'package:wgmainsite/routes/routes.dart';
import 'package:wgmainsite/widgets/navbar/navigation_widget.dart';

import 'navigation_widget_help_subsection.dart';
class NavigationItemHelp extends StatefulWidget {


  final String title;
  final String routeName;
  NavigationItemHelp({required this.title, required this.routeName});

  @override
  State<NavigationItemHelp> createState() => _NavigationItemHelpState();
}

class _NavigationItemHelpState extends State<NavigationItemHelp> {
  bool showWidget = false;

  String dropdownvalue = '';


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navKey.currentState!.pushNamed(widget.routeName);
        setState(() {
          showWidget = !showWidget;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent)
        ),
        child: Column(
          crossAxisAlignment : CrossAxisAlignment.end,

          children: [
            Padding(
              padding: const EdgeInsets.symmetric( vertical : 15),
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.expand_more, color : Color(0xFF1E1D1D)),
                  Center(
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.expand_more, color : Colors.white)
                ],
              ),
            ),
            showWidget ?
            Column(
                crossAxisAlignment : CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children :
                [
                  NavigationItemHelpSubsection(
                    title: 'View source code',
                    routeName: routeHelpSourceCode,
                  ),
                  NavigationItemHelpSubsection(
                    title: 'Base64',
                    routeName: routeHelpBase64,
                  ),
                ]

            ) : Container(),
          ],
        ),
      ),
    );
  }
}

