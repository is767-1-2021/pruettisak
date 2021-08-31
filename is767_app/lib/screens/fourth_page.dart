import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O'
    ];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];

    return Scaffold(
        appBar: AppBar(
          title: Text('Listview Example'),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.grey[colorCodes[index % 6]],
              child: Center(
                child: Text('Entry ${entries[index]}'),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
        ));
  }
}
