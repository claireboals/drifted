import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'drifted app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber[200],
        
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'drifted'),
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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.brown[600])),
        
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(20),
        
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15.0),
            height: 120,
            color: Colors.amber[100],
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.person_pin, size: 50),
                      Text('Mom')
                    ],
                  )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Called Mom 5 days ago")
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Icon(Icons.directions_boat, size: 50)
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.contact_phone, size: 50),  
                ),
              ],
            )
          ),
        ],

      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.add, 
          color: Colors.brown[600],
          ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
