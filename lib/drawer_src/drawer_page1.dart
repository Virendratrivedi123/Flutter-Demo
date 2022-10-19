// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:project1/drawer_src/drawer.dart';

void main() => runApp(page1());

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mydrawer()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Welcome to page 1'),
          onPressed: () {},
        ),
      ),
    );
  }
}
