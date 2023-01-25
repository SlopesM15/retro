// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Retro App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      SizedBox(
                          width: 400,
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: 10,
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
                      SizedBox(
                          width: 400,
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: 10,
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
                      SizedBox(
                          width: 400,
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: 10,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
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
