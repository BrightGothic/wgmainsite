import 'package:flutter/cupertino.dart';
import 'package:wgmainsite/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:wgmainsite/views/help_section/help_base64_page.dart';
import 'package:wgmainsite/views/help_page.dart';
import 'package:wgmainsite/views/help_section/help_html_page.dart';
import 'package:wgmainsite/views/help_section/help_source_code_page.dart';
import 'package:wgmainsite/views/help_section/help_template_page.dart';
import 'package:wgmainsite/views/home_page.dart';
import 'package:wgmainsite/views/scoreboard_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(settings: settings, builder: (_) => HomePage());
        break;
      case routeHelp:
        return MaterialPageRoute(settings: settings,builder: (_) => HelpPage());
        break;
      case routeHelpBase64:
        return MaterialPageRoute(builder: (_) => HelpSection(section: 'base64'));
        break;
      case routeHelpCss:
        return MaterialPageRoute(builder: (_) => HelpSection(section: 'css'));
        break;
      case routeHelpHtml:
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'html'));
        break;
      case routeHelpSQLi:
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'sqli'));
        break;
      case routeHelpRouting:
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'routing'));
        break;
      case routeHelpJS :
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'javascript'));
      case routeHelpPhp :
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'php'));
      case routeScoreboard:
        return MaterialPageRoute(settings: settings,builder: (_) => ScoreboardPage());
        break;
    };
    return MaterialPageRoute(builder: (_) => HomePage());
  }
}