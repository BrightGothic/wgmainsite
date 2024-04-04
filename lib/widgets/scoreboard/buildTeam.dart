import 'package:wgmainsite/constants/teams_class.dart';
import 'package:flutter/material.dart';

import 'charging_bar.dart';

Widget buildTeam(List<Team> teams) {
  return ListView.builder(
    itemCount: teams.length,
    itemBuilder: (context, index) {
      final team = teams[index];
      return Container(
        decoration : BoxDecoration(color : Color(0xFF244441)),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),

        child: Row(
          children: [
            Container(child: Text('#${index + 1}'), width : 40),
            Container(child: Text(team.name!), width : 120),
            Container(width: 10),
            Container(child: Text('${((team.step)!*100/9).floor().toString()!}%'), width : 70),
            ChargingBar(step : team.step),
          ],
        ),
      );
    },
  );
}