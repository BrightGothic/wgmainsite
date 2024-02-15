import 'package:flutter/material.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/countdowntimer.dart';

class HelpSourceCodePage extends StatefulWidget {
  const HelpSourceCodePage({Key? key}) : super(key: key);

  @override
  State<HelpSourceCodePage> createState() => _HelpSourceCodePageState();
}

class _HelpSourceCodePageState extends State<HelpSourceCodePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CountDownTimer(),
              const Text(
                "Source code page",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
