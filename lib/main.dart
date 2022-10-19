// ignore_for_file: unnecessary_new, avoid_print

import 'package:flutter/material.dart';
import 'package:project1/Instagram/inst.dart';
import 'package:project1/bottom_src/myhome.dart';
import 'package:project1/drawer_src/drawer.dart';

import 'About.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Aman App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text("MY App")),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            Container(
                height: 60,
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    // Background color
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'bottom tab navigation',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Myhome()),
                    );
                  },
                )),
            Container(
                height: 60,
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    // Background color
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'drawer',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mydrawer()),
                    );
                  },
                )),
            Container(
                height: 60,
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    // Background color
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'navigation',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const App()),
                    );
                  },
                )),
          ],
        ));
  }
}
