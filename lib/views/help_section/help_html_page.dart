import 'package:flutter/material.dart';
import 'package:wgmainsite/constants/page_texts.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/countdowntimer.dart';

class HelpHTMLPage extends StatefulWidget {
  const HelpHTMLPage({Key? key}) : super(key: key);

  @override
  State<HelpHTMLPage> createState() => _HelpHTMLPageState();
}

class _HelpHTMLPageState extends State<HelpHTMLPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: Container(
          height : 400,
          child: PageTexts().htmltext,
        ),
      ),
    );
  }
}
