import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        accentColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Home'),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Home'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Image cat = Image.asset(
    'assets/POPCAT1.png',
    //width: 120,
  );

  Image cat1 = Image.asset('assets/POPCAT1.png');

  Image cat2 = Image.asset('assets/POPCAT2.png');

  void _incrementCounter() {
    setState(() {
      cat = cat2;
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      cat = cat1;
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.add_comment),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 300,
                      child: cat,
                      margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 1))
                          ]),
                    ),
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child:
                      Text('Decrease', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child:
                      Text('Increase', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  final String buttonText;
  SubmitButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        this.buttonText,
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressing');
      },
    );
  }
}

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
