import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Container(
          margin:EdgeInsets.only(bottom: 200.0),


          child: Column(



            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const Text("Choose the Utility",style:TextStyle(
                fontFamily: "Courier",
                fontSize: 34.0,

                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold) ),
              SizedBox(
                height: 50,

              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    ElevatedButton.icon(
                      label: Text('Calculater',
                          style:TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),),
                      onPressed: () => Navigator.pushNamed(context, '/calculater'),
                      icon: Icon(Icons.calculate),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                    ),
                    ElevatedButton.icon(
                        label: Text('Stop Watch',
                          style:TextStyle(
                              fontSize: 15.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                      onPressed: () => Navigator.pushNamed(context, '/stop'),
                      icon: Icon(Icons.watch_later_outlined),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    SizedBox(
                    ),
                    ElevatedButton.icon(
                      label: Text('Quotes Hub',
                          style:TextStyle(
                              fontSize: 15.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                      onPressed: () => Navigator.pushNamed(context, '/quote'),
                      icon: Icon(Icons.note_alt_outlined),
                    )
                  ]

              ),


            ],
          ),
        ),

      ),
    );
  }
}