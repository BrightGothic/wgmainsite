import 'package:flutter/material.dart';
import 'dart:async';


class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);
  @override
  _TimerScreenState createState() => _TimerScreenState();
}
class _TimerScreenState extends State {
//the time left till the next special time comes up
  String timeLeft = "";
  ///takes an int when converting it to string adds
  /// a 0 in fron when it is smaller than 10
  ///
  ///will look nicer  when displayed on the screen
  String customString(int i) {
    if (i < 10) {
      return "0" + i.toString();
    } else {
      return i.toString();
    }
  }
  ///converts a duration to a
  ///string: days hours:minuts:seconds
  String remainingTimeToText(Duration duration) {
    //print(duration);
    int days = duration.inDays;
    int hours = duration.inHours - days * 24;
    int minutes = duration.inMinutes - hours * 60 - days * 24 * 60;
    int seconds =
        duration.inSeconds - hours * 3600 - minutes * 60 - days * 86400;
    if (days > 0) {
      String s = " days ";
      if (days == 1) {
        s = " day ";
      }
      return days.toString() +
          s +
          customString(hours) +
          ":" +
          customString(minutes) +
          ":" +
          customString(seconds);
    } else {
      return customString(hours) +
          ":" +
          customString(minutes) +
          ":" +
          customString(seconds);
    }
  }
  ///given a list of ints and another int value
  ///
  ///returs true it the value is contained in the list
  ///
  ///else returns false
  bool listContainsValue(List list, int value) {
    for (var element in list) {
      if (element == value) {
        //print(true);
        return true;
      }
    }
    //print(false);
    return false;
  }
  ///returns the time remaining till the next
  ///special time takes place as a string: hours:minutes:seconds
  ///
  ///if specialTime is currently active
  ///it returns an empty string
  ///
  ///specialTimes have to be given by entering an int list with all special
  ///weekdays and entering the startingHour and the endingHour
  timeRemaining(List weekdays, int startingHour, int endingHour) {
    DateTime now = DateTime.now();
    bool timeIsSpecial = false;
    for (var specificWeekday in weekdays) {
      if (now.weekday == specificWeekday &&
          (now.hour >= startingHour && now.hour < endingHour)) {
        timeIsSpecial = true;
      }
    }
    //print(timeIsSpecial);
    if (!timeIsSpecial) {
      DateTime nextSpecialTime =
      DateTime(now.year, now.month, now.day, startingHour);
      while (nextSpecialTime.isBefore(now) ||
          !listContainsValue(weekdays, nextSpecialTime.weekday)) {
        nextSpecialTime = nextSpecialTime.add(Duration(days: 1));
      }
      //return remainingTimeToText(nextSpecialTime.difference(now));
      return remainingTimeToText(DateTime(2024, 4, 1).difference(now));
    } else {
      return "";
    }
  }
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted == true) {
        setState(() {
          timeLeft = timeRemaining([5, 6, 7], 18, 22);
        });
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text(
            timeLeft,
            style: TextStyle(
              color: Colors.red,
              fontSize: 80,
            ),
          ),
        ),
      );
  }
}