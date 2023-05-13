import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/mochi.png",
                height: 90,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    AnchorElement anchorElement = new AnchorElement(
                        href: "assets/Sahar_Sarraj_Resume.pdf");
                    anchorElement.download = "sahar_resume";
                    anchorElement.click();
                  },
                  child: Text("Download"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
