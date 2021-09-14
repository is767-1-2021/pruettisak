import 'package:flutter/material.dart';
import 'package:is767_app/screens/sixth_page.dart';

class SeventhPage extends StatefulWidget {
  @override
  State<SeventhPage> createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
  String _formData = 'Please tab to fill form';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data Form'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_formData'),
            ElevatedButton(
                onPressed: () async {
                  var response = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SixthPage()));

                  if (response != null && response.toString().isNotEmpty) {
                    setState(() {
                      _formData = response.toString();
                    });
                  }
                },
                child: Text('Fill Form'))
          ],
        ),
      ),
    );
  }
}
