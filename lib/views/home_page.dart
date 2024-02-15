import 'package:flutter/material.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/countdowntimer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "Home page",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
