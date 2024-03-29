import 'package:flutter/material.dart';
import 'package:wgmainsite/constants/page_texts.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/countdowntimer.dart';

class HelpBase64Page extends StatefulWidget {
  const HelpBase64Page({Key? key}) : super(key: key);

  @override
  State<HelpBase64Page> createState() => _HelpBase64PageState();
}

class _HelpBase64PageState extends State<HelpBase64Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left : 20.0, right: 20),
                    child: PageTexts().csstext,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
