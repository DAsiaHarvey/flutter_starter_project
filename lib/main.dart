/**
 * Name: D'Asia Harvey
 * Date: 10/07/2022
 * Desc: Make a list of clues from crosswords, sort by answers or clues
 * Bugs: Something surely
 * Reflection: UI is still really new to me. Getting the buttons and the list to show
 * up together took me a little not gonna lie.
 */

import 'package:flutter/material.dart';
import 'package:flutter_starter_project/AddCluanWidget.dart';
import 'package:provider/provider.dart';
import 'CluansWidget.dart';
import 'AddCluanWidget.dart';
import 'cluanmodel.dart';

void main() {
  // runApp(MaterialApp(title: 'My App', home: MyApp()));
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return CluanModel();
      },
      child: MaterialApp(
        home: MyApp(),
      )));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  List<Widget> tabViews = [Consumer<CluanModel>(builder: (context, cluanModel, child) {
        return CluanWidget(model: cluanModel);
      }), Consumer<CluanModel>(builder: (context, cluanModel, child) {
        return AddCluanWidget(model: cluanModel);
      })];

  void _handleTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              showUnselectedLabels: true, // well, that's a surprise!
              selectedItemColor: Colors.pinkAccent,
              unselectedItemColor: Colors.blueAccent,
              backgroundColor: Colors.blue[200],
              onTap: _handleTap,
              items: const [
                BottomNavigationBarItem(
                    label: 'Cluan List', icon: Icon(Icons.list_outlined)),
                BottomNavigationBarItem(
                    label: 'Add Cluan', icon: Icon(Icons.add)),
              ]),
          appBar: AppBar(
            title: const Text('Main Page'),
          ),
          body: tabViews[selectedIndex]),
    );
  }
}
