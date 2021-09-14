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
  String _firstName;
  String _lastName;
  int _age;

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
                  hintText: 'Enter your firstname',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter firstname.';
                }
                return null;
              },
              onSaved: (value) {
                _firstName = value;
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
                  hintText: 'Enter your lastname',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter lastname.';
                }
                return null;
              },
              onSaved: (value) {
                _lastName = value;
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
              onSaved: (value) {
                _age = int.parse(value);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();

                var response = 'Hoorayyyy = $_firstName $_lastName Age: $_age';

                Navigator.pop(context, response);

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
