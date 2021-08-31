import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Form'),
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  labelText: 'Firstname',
                  hintText: 'Enter ypur firstname',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter fisrtname.';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  labelText: 'Lastname',
                  hintText: 'Enter ypur lastname',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter lastname.';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.grey,
                  ),
                  labelText: 'Age',
                  hintText: 'Enter ypur age',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter age.';
                }

                if (int.parse(value) < 18) {
                  return 'Please enter valid age.';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                print('--------------------------------');
                print('Hooray!!!!!!!!!!!!!!!!!!!!!!!!!');
                print('--------------------------------');
              }
            },
            child: Text('Validate'),
          )
        ],
      ),
    );
  }
}
