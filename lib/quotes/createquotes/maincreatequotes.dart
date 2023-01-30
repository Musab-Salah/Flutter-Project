import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';




class maincquotes extends StatefulWidget {
  const maincquotes({Key? key}) : super(key: key);

  @override
  State<maincquotes> createState() => _HomePageState();
}

class _HomePageState extends State<maincquotes> {
  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/quotes.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["quotes"];
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            _items.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Card(
                    ///
                    margin: const EdgeInsets.all(10),
                    color: const Color(0xffEEEEEE).withOpacity(0.5),
                    child: ListTile(
                      title: Text(_items[index]["name"]),
                      subtitle: Text(_items[index]["description"]),
                    ),
                  );
                },
              ),
            )
                : Container(),
           ElevatedButton.icon(

               onPressed: ()=> Navigator.pushNamed(context, '/writepage'), icon: Icon(Icons.add), label: Text("add")),

          ],
        ),
      ),
    );
  }
}