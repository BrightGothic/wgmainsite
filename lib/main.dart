import 'package:flutter/material.dart';
import 'package:wgmainsite/routes/router_generator.dart';
import 'package:wgmainsite/routes/routes.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'appview.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Bar Web',
      theme: appTheme,
      builder: (BuildContext context, Widget? child) {
        return AppView(child: child ?? Text("Error"));
      },
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
