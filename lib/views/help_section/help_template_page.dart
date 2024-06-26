import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:wgmainsite/constants/page_texts.dart';
import 'package:wgmainsite/widgets/apptheme.dart';

class HelpSection extends StatefulWidget {
  final String section;
  const HelpSection({required this.section, Key? key}) : super(key: key);

  @override
  State<HelpSection> createState() => _HelpSectionState();
}

class _HelpSectionState extends State<HelpSection> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: appTheme,
      home: SelectionArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children: [
              Center(child: Text(PageTexts().returnjson(widget.section)["title"], style : TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
              //Expanded(child :  PageTexts().returnjson("php")["markdown"]),
              Expanded(child: PageTexts().returnjson(widget.section)["markdown"]),
            ],
          ),
        ),
      ),
    );
  }
}
