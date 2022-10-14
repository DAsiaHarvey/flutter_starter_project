// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_starter_project/cluanmodel.dart';


class AddCluanWidget extends StatelessWidget {

final CluanModel model;
  AddCluanWidget({required this.model, Key? key}) : super(key: key);

  String? clue;
  String? answer;
  String? date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Cluan')),
      body: Column(children: [
        TextField(
            onChanged: (clue) {
              this.clue = clue;
            },
            decoration: InputDecoration(hintText: 'Clue')),
        TextField(
            onChanged: (answer) {
              this.answer = answer;
            },
            decoration: InputDecoration(hintText: 'Answer')),
        TextField(
            onChanged: (date) {
              this.date = date;
            },
            decoration: InputDecoration(hintText: 'Date')),
        ElevatedButton(onPressed: model.addCluan(clue,answer,date), child: Text('Add Cluan')),
        ElevatedButton(onPressed: null, child: Text('Clear')),
        ElevatedButton(onPressed: null, child: Text('Test Add')),
      ]),
    );
  }
}

