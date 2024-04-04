import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wgmainsite/constants/teams_class.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/scoreboard/buildTeam.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ScoreboardPage extends StatefulWidget {
  const ScoreboardPage({Key? key}) : super(key: key);

  @override
  State<ScoreboardPage> createState() => _ScoreboardPageState();
}

class _ScoreboardPageState extends State<ScoreboardPage> {


  static Future<List<Team>> getTeams() async {
    var url = Uri.parse("http://89.168.45.255:8080/teams");//https://jsonplaceholder.typicode.com/albums/1/photos");
    final response = await http.get(url, headers: {"Content-Type": "application/json"});
    final List body = json.decode(response.body);
    print(body);
    List<Team> teamList = body.map((e) => Team.fromJson(e)).toList();
    teamList.sort((a, b) {
      return - a.step.toString().toLowerCase().compareTo(b.step.toString().toLowerCase());
    });
    return teamList;
  }

  Future<List<Team>> postsFuture = getTeams();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: SelectionArea(
        child: Scaffold(
          body: Center(
            child: Container(
              width : 400,
              child: Column(
                crossAxisAlignment :CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Leaderboard",
                    style : TextStyle( fontSize: 48)
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left : 40.0, top : 75),
                    child: FutureBuilder <List<Team>>(
                      // pass the list (postsFuture)
                        future: postsFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            // do something till waiting for data, we can show here a loader
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasData) {
                            final teams = snapshot.data!;
                            return buildTeam(teams);
                          } else {

                            return Text("No data available");
                            // we did not recieve any data, maybe show error or no data available
                          }
                        }
                    )
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
