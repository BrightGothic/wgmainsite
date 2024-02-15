import 'package:flutter/material.dart';
import 'package:wgmainsite/widgets/navbar/navbar.dart';

class AppView extends StatelessWidget {

  final Widget child;

  const AppView({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF424242),
      body: Row(
        crossAxisAlignment : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationBarWeb(),
          VerticalDivider(color: Color(0xFF424242), width: 2),
          Expanded(child: child)
        ],
       // children: [SidebarMenu(), Expanded(child: child)],
      ),
    );
  }
}