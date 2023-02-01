// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';
import "package:collection/collection.dart";
import 'package:retro_analysis/cloudwords.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retro Analysis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Retro Analysis'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class uniqueText {
  String text;
  int count;
  uniqueText({required this.text, this.count = 0});
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> text = [];

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  Map<String, int> ut = {};
  Map<String, int> ut2 = {};
  Map<String, int> ut3 = {};

  List<CloudWords> words = [];
  List<Widget> widgets = <Widget>[];

  void _updateText(String value) {
    setState(() {
      List<String> utext = [];
      text.clear();
      ut = _controller.text
          .split(' ')
          .groupListsBy((w) => w)
          .map((k, v) => MapEntry(k, v.length));
    });
  }

  void _updateText2(String value) {
    setState(() {
      List<String> utext = [];
      text.clear();
      ut2 = _controller2.text
          .split(' ')
          .groupListsBy((w) => w)
          .map((k, v) => MapEntry(k, v.length));
    });
  }

  void _updateText3(String value) {
    setState(() {
      List<String> utext = [];
      text.clear();
      ut3 = _controller3.text
          .split(' ')
          .groupListsBy((w) => w)
          .map((k, v) => MapEntry(k, v.length));
    });
  }
  //   void _updateTextList(String value, Map<String, int> unitext,
  //     TextEditingController _ucontroller) {
  //   setState(() {
  //     List<String> utext = [];
  //     text.clear();
  //     unitext = _ucontroller.text
  //         .split(' ')
  //         .groupListsBy((w) => w)
  //         .map((k, v) => MapEntry(k, v.length));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('What went well?'),
                      SizedBox(
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              // textInputAction: TextInputAction.newline,
                              onChanged: (value) => {_updateText(value)},
                              controller: _controller,
                              maxLines: 15,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ))
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('What went wrong?'),
                      SizedBox(
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (value) => {_updateText2(value)},
                              controller: _controller2,
                              maxLines: 15,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ))
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('What can we imporve?'),
                      SizedBox(
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (value) => {_updateText3(value)},
                              controller: _controller3,
                              maxLines: 15,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 15),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          width: 385,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Scatter(
                              clipBehavior: Clip.antiAlias,
                              delegate: ArchimedeanSpiralScatterDelegate(
                                  a: 1, b: 1, ratio: 1 / 2),
                              alignment: Alignment.center,
                              fillGaps: true,

                              // ignore: prefer_const_literals_to_create_immutables

                              children: [
                                for (var i = 0; i < ut.length; i++)
                                  RotatedBox(
                                    quarterTurns: Random().nextInt(4),
                                    child: Text(
                                      ut.keys.elementAt(i),
                                      style: TextStyle(
                                          fontSize: ut.values.elementAt(i) * 10
                                              as double,
                                          color: Color(
                                                  (math.Random().nextDouble() *
                                                          0xFFFFFF)
                                                      .toInt())
                                              .withOpacity(1.0)),
                                    ),
                                  )
                              ],
                            ),
                          ))
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 18),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          width: 385,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Scatter(
                              clipBehavior: Clip.antiAlias,
                              delegate: ArchimedeanSpiralScatterDelegate(
                                  a: 1, b: 1, ratio: 1 / 2),
                              alignment: Alignment.center,
                              fillGaps: true,

                              // ignore: prefer_const_literals_to_create_immutables

                              children: [
                                for (var i = 0; i < ut2.length; i++)
                                  RotatedBox(
                                    quarterTurns: Random().nextInt(4),
                                    child: Text(
                                      ut2.keys.elementAt(i),
                                      style: TextStyle(
                                          fontSize: ut2.values.elementAt(i) * 10
                                              as double,
                                          color: Color(
                                                  (math.Random().nextDouble() *
                                                          0xFFFFFF)
                                                      .toInt())
                                              .withOpacity(1.0)),
                                    ),
                                  )
                              ],
                            ),
                          ))
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          width: 385,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Scatter(
                              clipBehavior: Clip.antiAlias,
                              delegate: ArchimedeanSpiralScatterDelegate(
                                  a: 1, b: 1, ratio: 1 / 2),
                              alignment: Alignment.center,
                              fillGaps: true,

                              // ignore: prefer_const_literals_to_create_immutables

                              children: [
                                for (var i = 0; i < ut3.length; i++)
                                  RotatedBox(
                                    quarterTurns: Random().nextInt(4),
                                    child: Text(
                                      ut3.keys.elementAt(i),
                                      style: TextStyle(
                                          fontSize: ut3.values.elementAt(i) * 10
                                              as double,
                                          color: Color(
                                                  (math.Random().nextDouble() *
                                                          0xFFFFFF)
                                                      .toInt())
                                              .withOpacity(1.0)),
                                    ),
                                  )
                              ],
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
