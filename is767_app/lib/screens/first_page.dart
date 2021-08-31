import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('First Page'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.access_alarms)),
          IconButton(onPressed: () {}, icon: Icon(Icons.router)),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Second Page', style: TextStyle(fontSize: 20)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
        ),
      ),
    );
  }
}
