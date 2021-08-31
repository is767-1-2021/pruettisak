import 'package:flutter/material.dart';

import 'fourth_page.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Third Page'),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.cloud)),
              Tab(icon: Icon(Icons.beach_access)),
              Tab(icon: Icon(Icons.wb_sunny))
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: TextButton(
                child: Text('Cloud'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FourthPage()));
                },
              ),
            ),
            Center(
              child: Text('Umbrella'),
            ),
            Center(
              child: Text('Surfing'),
            )
          ]),
        ));
  }
}
