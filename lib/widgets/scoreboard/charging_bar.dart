import'package:flutter/material.dart';

class ChargingBar extends StatelessWidget {
  final int? step;

  ChargingBar({required this.step});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        height: 30.0,
        width: 90.0,
        // alignment: FractionalOffset.center,
        child: new Stack(
          //alignment:new Alignment(x, y)
          children: <Widget>[
            new Container(color: Colors.red, width : 90),

            new Container(color: Colors.green, width : step!*10)

          ],
        )
    )
    ;
  }
  }