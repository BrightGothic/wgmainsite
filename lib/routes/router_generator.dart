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
import 'dart:html' as html;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        html.window.history.pushState({}, '', '/home');
        return MaterialPageRoute(settings: settings, builder: (_) => HomePage());
        break;
      case routeHelp:
        html.window.history.pushState({}, '', '/help');
        return MaterialPageRoute(settings: settings,builder: (_) => HelpPage());
        break;
      case routeHelpBase64:
        html.window.history.pushState({}, '', '/help/base64');
        return MaterialPageRoute(builder: (_) => HelpSection(section: 'base64'));
        break;
      case routeHelpCss:
        html.window.history.pushState({}, '', '/help/css');
        return MaterialPageRoute(builder: (_) => HelpSection(section: 'css'));
        break;
      case routeHelpHtml:
        html.window.history.pushState({}, '', '/help/html');
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'html'));
        break;
      case routeHelpSQLi:
        html.window.history.pushState({}, '', '/help/sqli');
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'sqli'));
        break;
      case routeHelpRouting:
        html.window.history.pushState({}, '', '/help/routing');
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'routing'));
        break;
      case routeHelpJS :
        html.window.history.pushState({}, '', '/help/js');
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'javascript'));
      case routeHelpPhp :
        html.window.history.pushState({}, '', '/help/php');
        return MaterialPageRoute(settings: settings,builder: (_) => HelpSection(section: 'php'));
      case routeScoreboard:
        html.window.history.pushState({}, '', '/scoreboard');
        return MaterialPageRoute(settings: settings,builder: (_) => ScoreboardPage());
        break;
    };
    return MaterialPageRoute(builder: (_) => HomePage());
  }
}