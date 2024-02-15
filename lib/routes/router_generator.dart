import 'package:flutter/cupertino.dart';
import 'package:wgmainsite/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:wgmainsite/views/help_base64_page.dart';
import 'package:wgmainsite/views/help_page.dart';
import 'package:wgmainsite/views/help_source_code_page.dart';
import 'package:wgmainsite/views/home_page.dart';
import 'package:wgmainsite/views/scoreboard_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case routeHelp:
        return MaterialPageRoute(builder: (_) => HelpPage());
        break;
      case routeHelpSourceCode:
        return MaterialPageRoute(builder: (_) => HelpSourceCodePage());
        break;
      case routeHelpBase64:
        return MaterialPageRoute(builder: (_) => HelpBase64Page());
        break;
      case routeScoreboard:
        return MaterialPageRoute(builder: (_) => ScoreboardPage());
        break;
    };
    return MaterialPageRoute(builder: (_) => HomePage());
  }
}