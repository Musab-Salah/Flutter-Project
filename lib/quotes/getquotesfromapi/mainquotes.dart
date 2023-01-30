import 'package:flutter/material.dart';

import './network/api_call.dart';

class getquote extends StatelessWidget {
  const getquote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(


      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    fetchAllQuotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FutureBuilder(
        future: fetchAllQuotes(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: const Color(0xffEEEEEE).withOpacity(0.5),
                    child: ListTile(
                      title: Text(
                        snapshot.data[index].author,
                        style:  const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(snapshot.data[index].text),
                    ),
                  );
                });
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Color(0x607D8BFF),
            ));
          }
        },
      ),
    );
  }
}
