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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        child: const Text(
                          'Row 1',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        child: const Text(
                          'Row 2',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        child: const Text(
                          'Row 3',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        child: const Text(
                          'Row 4',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        child: const Text(
                          'Row 5',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black12,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 2',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 3',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 4',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 5',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 6',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 7',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.pink,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 8',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 9',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.purpleAccent,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 10',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.deepOrange,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 11',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 12',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  height: 200,
                  width: 200,
                  child: const Text(
                    'Child 13',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
