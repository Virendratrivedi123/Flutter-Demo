// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:project1/Instagram/feed.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Image.network(
          "https://freepngimg.com/save/76861-web-instagram-script-typeface-typography-font/1785x612",
        ),
        leadingWidth: 130,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 10, top: 12, right: 10),
            child: Image.network(
              "https://cdn-icons-png.flaticon.com/512/6537/6537820.png",
              height: 23.0,
              width: 23.0,
              alignment: Alignment.topRight,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Image.network(
              "https://i.pinimg.com/564x/81/61/11/8161118286008dc972953ec78503740b.jpg",
              height: 28.0,
              width: 28.0,
              alignment: Alignment.topRight,
            ),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "acc"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "acc"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call_sharp), label: "acc"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "acc"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_rounded), label: "acc"),
        ],
      ),
    );
  }
}
