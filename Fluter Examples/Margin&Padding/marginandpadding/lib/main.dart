import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body:
            addMarginWithContanerAndPaddingText()); // This trailing comma makes auto-formatting nicer for build methods.
  }

  Padding addpaddingWithText() {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('Hello devs!!', style: TextStyle(fontSize: 24)),
    );
  }

  Container addMarginWithContaner() {
    return Container(
        child: const Text('Hey dev what r you doing!!!'),
        margin: const EdgeInsets.all(10),
        color: Colors.amberAccent);
  }

  Container addMarginWithContanerAndPaddingText() {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Hey dev what r you doing, see padding on text!!!',
              style: TextStyle(fontSize: 28)),
        ),
        margin: const EdgeInsets.all(10),
        color: Colors.amberAccent);
  }
}
