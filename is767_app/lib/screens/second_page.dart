import 'package:flutter/material.dart';

import 'third_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.account_box))],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ThirdPage()));
        },
        child: Icon(Icons.build),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Here is the text format by Themedata',
                style: TextStyle(fontSize: 20)),
            Table(
              children: [
                TableRow(children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'No',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text('Name',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text('Gender',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)))
                ]),
                TableRow(children: [
                  Text('1', style: TextStyle(fontSize: 16)),
                  Text('Pruettisak', style: TextStyle(fontSize: 16)),
                  Text('Male', style: TextStyle(fontSize: 16))
                ]),
                TableRow(children: [
                  Text('2', style: TextStyle(fontSize: 16)),
                  Text('Sararas', style: TextStyle(fontSize: 16)),
                  Text('Female', style: TextStyle(fontSize: 16))
                ]),
                TableRow(children: [
                  Text('3', style: TextStyle(fontSize: 16)),
                  Text('Winai', style: TextStyle(fontSize: 16)),
                  Text('Male', style: TextStyle(fontSize: 16))
                ]),
                TableRow(children: [
                  Text('4', style: TextStyle(fontSize: 16)),
                  Text('Jamchan', style: TextStyle(fontSize: 16)),
                  Text('Female', style: TextStyle(fontSize: 16))
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
