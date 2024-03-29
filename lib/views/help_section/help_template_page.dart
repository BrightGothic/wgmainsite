import 'package:flutter/material.dart';
import 'package:wgmainsite/constants/page_texts.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/countdowntimer.dart';

class HelpSection extends StatefulWidget {
  final String section;
  const HelpSection({required this.section, Key? key}) : super(key: key);

  @override
  State<HelpSection> createState() => _HelpSectionState();
}

class _HelpSectionState extends State<HelpSection> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: PageTexts().returnBodytext(widget.section),
      ),
    );
  }
}
