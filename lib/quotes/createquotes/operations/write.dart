import 'package:flutter/material.dart';

class writepage extends StatelessWidget {
  const writepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:MyCustomForm() ,
    );
  }
}



class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
          initialValue:"Please enter the Title",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the Title';
              }
              return null;
            },
          ),
          TextFormField(
            initialValue:"Please enter the Quote",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the Quote';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}