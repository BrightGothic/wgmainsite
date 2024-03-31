import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor:  Color(0xFF1E1D1D),// Color(0xFF646464),
  textTheme: TextTheme(
    titleLarge : TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    bodyMedium : TextStyle(fontSize: 16.0, color: Colors.white),
  ),
);


final MarkdownStyleSheet markdowntheme = MarkdownStyleSheet(
    h1: TextStyle(fontSize: 24, color : Colors.white),
    h2: TextStyle(fontSize: 20),
    a: TextStyle(color: Colors.white),
    codeblockDecoration: BoxDecoration (color: Color(0xFF646464), borderRadius: BorderRadius.circular(12)),
    code : TextStyle(backgroundColor: Color(0xFF646464), color : Colors.white)
);
