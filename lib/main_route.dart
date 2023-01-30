import 'package:ff23/quotes/createquotes/operations/write.dart';
import 'package:ff23/quotes/mainquotes.dart';
import 'package:ff23/stop_watch_app/stop_watch_screen.dart';
import 'package:flutter/material.dart';

import 'calculator_app/calculator_screen.dart';
import 'mainpage.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation and Routing',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext ctx) => Main(),
        '/calculater': (BuildContext ctx) => CalculatorScreen(),
        '/stop': (BuildContext ctx) => StopWatchScreen(),
        '/quote': (BuildContext ctx) => Mainquotes(),
        '/writepage': (BuildContext ctx) => writepage(),

      },
    );
  }
}