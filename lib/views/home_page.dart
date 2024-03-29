import 'package:flutter/material.dart';
import 'package:wgmainsite/widgets/apptheme.dart';
import 'package:wgmainsite/widgets/flipdownclock.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showWidget = false;
  bool bombstopped = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController secretbombcontroller = TextEditingController();

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    backgroundColor: Colors.black54,
    minimumSize: Size(100, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: Expanded(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Container(),
                  ),
                  Text("Time remaining before explosion : ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  Flipdownclock(),
                  Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Container(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showWidget = !showWidget;
                      });
                    },
                    child: Text('Very secret button, DO NOT CLICK',
                        style: TextStyle(color: Colors.grey)),
                    style: raisedButtonStyle2,
                  ),
                  if (showWidget)
                    SizedBox(
                      height: 400,
                      child: Center(
                        child: Column(children: [
                          Padding(padding: EdgeInsets.only(top: 60.0)),
                          Text(
                              "In case of emergency, enter the secret code to stop the bomb"),
                          Form(
                            key: _formKey,
                            child: SizedBox(
                              width: 400,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    controller: secretbombcontroller,
                                    style: new TextStyle(
                                        fontSize: 22.0, color: Colors.white),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: Center(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Validate returns true if the form is valid, or false otherwise.
                                          if (_formKey.currentState!
                                              .validate()) {
                                            // If the form is valid, display a snackbar. In the real world,
                                            // you'd often call a server or save the information in a database.
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                  content:
                                                      Text('Processing Data')),
                                            );
                                            //password : ViVeriVeniversumVivusVici
                                            if (md5.convert(utf8.encode(secretbombcontroller.text)).toString() =="3e926a1c73256bb284001bdab8e5c265") {
                                              setState(() {
                                                bombstopped = !bombstopped;
                                              });
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content:
                                                    Text('Bomb diffused')),
                                              );
                                            }else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content:
                                                    Text('Wrong password')),
                                              );
                                            }
                                          }
                                        },
                                        child: const Text('Submit'),
                                      ),
                                    ),
                                  ),
                                  if (bombstopped) Text("Bomb stopped !") else Text("Bomb working !")
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )
                  else
                    Container(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
