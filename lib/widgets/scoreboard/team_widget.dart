import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class TeamWidget extends StatefulWidget {
  const TeamWidget({Key? key}) : super(key: key);

  @override
  State<TeamWidget> createState() => _TeamWidgetState();
}

class _TeamWidgetState extends State<TeamWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child : Row(
        children : [
          Text('Team Fun'),
          LinearPercentIndicator(
            width: 140.0,
            lineHeight: 14.0,
            percent: 0.5,
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
          ),
        ]
      )
    );
  }
}
