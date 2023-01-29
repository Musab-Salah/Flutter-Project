import 'package:ff23/quotes/mainquotes.dart';
import 'package:ff23/stop_watch_app/stop_watch_screen.dart';
import 'package:flutter/material.dart';

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
          ],
        ),

      ),
    );
  }
}