import 'package:flutter/material.dart';
import 'package:wgmainsite/routes/routes.dart';
class NavigationItemHelpSubsection extends StatefulWidget {


  final String title;
  final String routeName;
  NavigationItemHelpSubsection({required this.title, required this.routeName});

  @override
  State<NavigationItemHelpSubsection> createState() => _NavigationItemHelpSubsectionState();
}

class _NavigationItemHelpSubsectionState extends State<NavigationItemHelpSubsection> {
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
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical : 15),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}

