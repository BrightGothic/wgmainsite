import 'package:flutter/material.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:wgmainsite/widgets/challendtimer.dart';
import 'package:wgmainsite/widgets/flipdownclock.dart';


class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TimerScreen(),
              const Text(
                "Help page",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
