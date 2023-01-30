// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';

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
  TextEditingController _controller = TextEditingController();
  List<uniqueText> ut = <uniqueText>[];

  void _updateText(String value) {
    setState(() {
      List<String> utext = [];
      text.clear();
      text.addAll(_controller.text.split(' '));
      for (var i = 0; i < text.length; i++) {
        if (ut.any((ut) => ut.text == text[i])) {
          ut[i].count = ut[i].count + 1;
        } else {
          utext.add(text[i]);
          ut.add(uniqueText(text: text[i]));

          ;
        }
      }
      print(utext);
    });
    //  print(ut.length);
  }

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
                      Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent)),
                          width: 400,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Scatter(
                              alignment: Alignment.center,

                              fillGaps: true,

                              // ignore: prefer_const_literals_to_create_immutables

                              children: [
                                //  text.isNotEmpty
                                //    ?
                                for (var i = 0; i < text.length; i++)
                                  // _updateTextList(text, text.length)
                                  (Text(text[i]))
                                //     : Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test'),
                                // Text('test')
                              ],
                            ),
                            // child: TextField(
                            //   maxLines: 10,
                            //   decoration: InputDecoration(
                            //     border: OutlineInputBorder(),
                            //   ),
                            // ),
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
