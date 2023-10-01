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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
        body: gridBuilderwithExtent());
  }

  GridView gridBuilderwithExtent() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 50, crossAxisSpacing: 11),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.red,
          child: Text('$index'),
        );
      },
      itemCount: 3,
    );
  }

  GridView gridBuilder() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 5),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.red,
          child: Text('$index'),
        );
      },
      itemCount: 3,
    );
  }

  GridView extentgridview() {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children: [
        Container(color: Colors.blue, child: const Text('item 1')),
        Container(color: Colors.red, child: const Text('item 2')),
        Container(color: Colors.orange, child: const Text('item 3')),
        Container(color: Colors.green, child: const Text('item 4')),
        Container(color: Colors.yellow, child: const Text('item 5')),
        Container(color: Colors.deepOrange, child: const Text('item 6')),
        Container(color: Colors.deepPurple, child: const Text('item 7')),
      ],
    );
  }

  Container fixsizeGridView() {
    return Container(
      width: 200,
      color: Colors.black,
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children: [
          Container(color: Colors.blue, child: const Text('item 1')),
          Container(color: Colors.red, child: const Text('item 2')),
          Container(color: Colors.orange, child: const Text('item 3')),
          Container(color: Colors.green, child: const Text('item 4')),
          Container(color: Colors.yellow, child: const Text('item 5')),
          Container(color: Colors.deepOrange, child: const Text('item 6')),
          Container(color: Colors.deepPurple, child: const Text('item 7')),
        ],
      ),
    );
  }
}
