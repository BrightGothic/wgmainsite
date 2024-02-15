import 'package:flutter/material.dart';
import 'package:wgmainsite/routes/routes.dart';
class NavigationItem extends StatefulWidget {


  final String title;
  final String routeName;
  NavigationItem({required this.title, required this.routeName});

  @override
  State<NavigationItem> createState() => _NavigationItemState();
}

class _NavigationItemState extends State<NavigationItem> {
  bool showWidget = false;

  String dropdownvalue = '';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];


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
            border: Border.all(color: Colors.blueAccent)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical : 15),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}

