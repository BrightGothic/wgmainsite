import 'package:flutter/material.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/flipdownclock.dart';
import 'package:wgmainsite/widgets/scoreboard/linechart.dart';

class ScoreboardPage extends StatefulWidget {
  const ScoreboardPage({Key? key}) : super(key: key);

  @override
  State<ScoreboardPage> createState() => _ScoreboardPageState();
}

class _ScoreboardPageState extends State<ScoreboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: SelectionArea(
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment :CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Scoreboard page",
                ),
                Expanded(child: LineChartSample6()),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
