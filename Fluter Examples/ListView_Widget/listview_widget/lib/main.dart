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
  var arrNames = [
    'Ram JI',
    'Sita Mata JI',
    'Hanuman JI',
    'Raman',
    'Rajan',
    'Rahul',
    'Sharma'
  ];

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
        body: separatedListViewBuilder()
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  ListView separatedListViewBuilder() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Text(
          arrNames[index],
          style: const TextStyle(fontSize: 20),
        );
      },
      itemCount: arrNames.length,
      separatorBuilder: (context, index) {
        return const Divider(
          height: 100,
          thickness: 4,
        );
      },
    );
  }

  ListView dynamicListViewBuilder() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Text(
          arrNames[index],
          style: const TextStyle(fontSize: 20),
        );
      },
      itemCount: arrNames.length,
      itemExtent: 100,
    );
  }

  ListView staticListViewBuilder() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Text(
          'Row 1',
          style: TextStyle(fontSize: 20),
        );
      },
      itemCount: 4,
    );
  }

  ListView simpleListView() {
    return ListView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 1', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 2', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 3', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 4', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 5', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 6', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 7', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 8', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 9', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 10', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 11', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 12', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 13', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 14', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Row 15', style: TextStyle(fontSize: 30)),
        ),
      ],
    );
  }
}
