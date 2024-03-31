import 'dart:async';

import 'package:flip_board/flip_widget.dart';
import 'package:flutter/material.dart';

class FlipdownclockStopped extends StatefulWidget {
  @override
  State<FlipdownclockStopped> createState() => _FlipdownclockStoppedState();
}

class _FlipdownclockStoppedState extends State<FlipdownclockStopped> {


  List<int> remainingTimeToText(Duration duration) {
    int days = duration.inDays;
    int hours = duration.inHours - days * 24;
    int minutes = duration.inMinutes - hours * 60 - days * 24 * 60;
    int seconds =
        duration.inSeconds - hours * 3600 - minutes * 60 - days * 86400;
    return [days, hours, minutes, seconds];
  }


  bool listContainsValue(List list, int value) {
    for (var element in list) {
      if (element == value) {
        return true;
      }
    }
    return false;
  }

  List<int> timeRemaining(List weekdays, int startingHour, int endingHour) {
    DateTime now = DateTime.now();
    bool timeIsSpecial = false;
    /*for (var specificWeekday in weekdays) {
      if (now.weekday == specificWeekday &&
          (now.hour >= startingHour && now.hour < endingHour)) {
        timeIsSpecial = true;
      }
    }*/
    if (!timeIsSpecial) {
      DateTime nextSpecialTime = DateTime(now.year, now.month, now.day, startingHour);
      while (nextSpecialTime.isBefore(now) ||
          !listContainsValue(weekdays, nextSpecialTime.weekday)) {
        nextSpecialTime = nextSpecialTime.add(Duration(days: 1));
      }
      //return remainingTimeToText(nextSpecialTime.difference(now));
      return remainingTimeToText(DateTime(2024, 4, 13).difference(now));
    } else {
      return [0,0,0,0];
    }
  }


  List? timeLeft;

  Future<List<int>> callAsyncFetch() async {
    timeLeft =  [00,00,00,00];
    Future.delayed(Duration(seconds: 1));
    return [00,00,00,00];
  }

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted == true) {
        setState(() {
          timeLeft = [00,00,00,00];
        });
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<int>>(
        future: callAsyncFetch(),
        builder: (context, AsyncSnapshot<List<int>> snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Row(
                mainAxisAlignment : MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: FlipWidget(
                          initialValue: snapshot.data![0],
                          flipType: FlipType.middleFlip,
                          itemStream:Stream<int>.periodic(const Duration(seconds: 86400), (count) => count * count).take(1000),
                          itemBuilder: (_, day) => _container(timeLeft![0].toString()),
                          flipDirection: AxisDirection.down
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: FlipWidget(
                          initialValue: snapshot.data![0],
                          flipType: FlipType.middleFlip,
                          itemStream:Stream<int>.periodic(const Duration(seconds: 3600), (count) => count * count).take(1000),
                          itemBuilder: (_, day) => _container(timeLeft![1].toString()),
                          flipDirection: AxisDirection.down
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: FlipWidget(
                          initialValue: snapshot.data![0],
                          flipType: FlipType.middleFlip,
                          itemStream: Stream<int>.periodic(const Duration(seconds: 3600), (count) => count * count).take(1000),
                          itemBuilder: (_, day) => _container(timeLeft![2].toString()),
                          flipDirection: AxisDirection.down
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: FlipWidget(
                          initialValue: snapshot.data![0],
                          flipType: FlipType.middleFlip,
                          itemStream: Stream<int>.periodic(const Duration(seconds: 3600), (count) => count * count).take(1000),
                          itemBuilder: (_, day) => _container(timeLeft![3].toString()),
                          flipDirection: AxisDirection.down
                      )
                  ),
                ],
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }

  Widget _container(String text) => Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(),
      borderRadius: BorderRadius.circular(4.0),
    ),
    width: 100.0,
    height: 100.0,
    child: Text(
      text,
      style: const TextStyle(color: Colors.green, fontSize: 64.0, fontWeight: FontWeight.bold),
    ),
  );
}

