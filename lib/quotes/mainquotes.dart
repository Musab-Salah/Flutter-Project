
import 'package:flutter/material.dart';

import 'createquotes/maincreatequotes.dart';
import 'getquotesfromapi/mainquotes.dart';


class Mainquotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          bottom: TabBar(tabs: const <Widget>[
            Tab(icon: Icon(Icons.event_note_outlined)),
            Tab(icon: Icon(Icons.note_add)),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            getquote(),
            maincquotes(),
          ],
        ),

      ),
    );
  }
}