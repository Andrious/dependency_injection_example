import 'package:dependencyinjection/src/view.dart';

import 'package:dependencyinjection/src/controller.dart' show Car, Controller;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Controller con = Controller();

  /// Incorporate the common DI example.
  final Car car = Car();

  void _incrementCounter() {
    setState(() {
      con.incrementCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${con.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '\r\nThe type of car wheels:',
            ),
            Text(
              '${car.wheel.type}',
              style: Theme.of(context).textTheme.headline4,
            ),
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
