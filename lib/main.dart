import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chose'),
      ),
      body: Center(

        child: Container(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              ElevatedButton(
                child: const Text('Calculater'),
                onPressed: () => Navigator.pushNamed(context, '/calculater'),
              ),
              ElevatedButton(
                child: const Text('stop'),
                onPressed: () => Navigator.pushNamed(context, '/stop'),
              ),
              ElevatedButton(
                child: const Text('quote'),
                onPressed: () => Navigator.pushNamed(context, '/quote'),
              )
            ],
          ),
        ),
      ),
    );
  }
}