/// Name: D'Asia Harvey
/// Date: 10/07/2022
/// Desc: Make a list of clues from crosswords, sort by answers or clues
/// Bugs: Something surely
/// Reflection: UI is still really new to me. Getting the buttons and the list to show
/// up together took me a little not gonna lie.

import 'package:flutter/material.dart';
import 'package:flutter_starter_project/cluanmodel.dart';

/// cluan widget
class CluanWidget extends StatelessWidget {
  //stateful makes it change
  final CluanModel model;
  const CluanWidget({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //holds stuff that shows up
        Expanded(
          flex: 3,
          child: ListView.separated(
            itemCount: model.cluans!.length,
            itemBuilder: (BuildContext context, int index) {
              // makes list widget
              return ListTile(
                title: Text(model.cluans![index].answer!),
                subtitle: Text(model.cluans![index].clue!),
                trailing: Text(model.cluans![index].date!),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              //red divider
              return Divider(
                color: Colors.red[900],
                thickness: 1,
              );
            },
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //buttons
                ElevatedButton(
                    onPressed: model.sortByClue, child: const Text('Sort by Clue')),
                ElevatedButton(
                    onPressed: model.sortByAnswer, child: const Text('Sort by Answer'))
              ],
            ))
      ],
    ));
  }
}
