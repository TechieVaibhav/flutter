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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Column Page'),
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:
            columnWithRow() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Column columnStyle() {
    return const Column(
      children: [
        Text('A', style: TextStyle(fontSize: 25)),
        Text('B', style: TextStyle(fontSize: 25)),
        Text('C', style: TextStyle(fontSize: 25)),
        Text('D', style: TextStyle(fontSize: 25)),
        Text('E', style: TextStyle(fontSize: 25)),
        Text('F', style: TextStyle(fontSize: 25))
      ],
    );
  }

  Row rowStyle() {
    return const Row(
      children: [
        Text('A', style: TextStyle(fontSize: 25)),
        Text('B', style: TextStyle(fontSize: 25)),
        Text('C', style: TextStyle(fontSize: 25)),
        Text('D', style: TextStyle(fontSize: 25)),
        Text('E', style: TextStyle(fontSize: 25)),
        Text('F', style: TextStyle(fontSize: 25))
      ],
    );
  }

// if you deifine array type , then you can pass only specific type
  Row rowOnlyText() {
    return const Row(
      // we can pass only Text Widget
      children: <Text>[
        Text('A', style: TextStyle(fontSize: 25)),
        Text('B', style: TextStyle(fontSize: 25)),
        Text('C', style: TextStyle(fontSize: 25)),
        Text('D', style: TextStyle(fontSize: 25)),
        Text('E', style: TextStyle(fontSize: 25)),
        Text('F', style: TextStyle(fontSize: 25))
      ],
    );
  }

  Row rowGenericTypes() {
    return Row(
      // we can pass any widget
      children: <Widget>[
        const Text('A', style: TextStyle(fontSize: 25)),
        const Text('B', style: TextStyle(fontSize: 25)),
        const Text('C', style: TextStyle(fontSize: 25)),
        const Text('D', style: TextStyle(fontSize: 25)),
        const Text('E', style: TextStyle(fontSize: 25)),
        const Text('F', style: TextStyle(fontSize: 25)),
        ElevatedButton(
            onPressed: () {
              print('tapped');
            },
            child: const Text('Tap on me')),
      ],
    );
  }

//A Main Axis Alignment for Row with Equally Space
  SizedBox mainAxisAlignmentForRowWithEquallySpace() {
    return SizedBox(
      width: 350,
      child: Center(
        child: Row(
          // we can pass any widget
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text('A', style: TextStyle(fontSize: 25)),
            const Text('B', style: TextStyle(fontSize: 25)),
            const Text('C', style: TextStyle(fontSize: 25)),
            const Text('D', style: TextStyle(fontSize: 25)),
            const Text('E', style: TextStyle(fontSize: 25)),
            const Text('F', style: TextStyle(fontSize: 25)),
            ElevatedButton(
                onPressed: () {
                  print('tapped');
                },
                child: const Text('Tap on me')),
          ],
        ),
      ),
    );
  }

  //A Main Axis Alignment for Row with SpaceAround
  SizedBox mainAxisAlignmentForRowWithSpaceAround() {
    return SizedBox(
      width: 350,
      child: Center(
        child: Row(
          // we can pass any widget
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text('A', style: TextStyle(fontSize: 25)),
            const Text('B', style: TextStyle(fontSize: 25)),
            const Text('C', style: TextStyle(fontSize: 25)),
            const Text('D', style: TextStyle(fontSize: 25)),
            const Text('E', style: TextStyle(fontSize: 25)),
            const Text('F', style: TextStyle(fontSize: 25)),
            ElevatedButton(
                onPressed: () {
                  print('tapped');
                },
                child: const Text('Tap on me')),
          ],
        ),
      ),
    );
  }

  //A Main Axis Alignment for Row with spaceBetween
  SizedBox mainAxisAlignmentForRowWithspaceBetween() {
    return SizedBox(
      width: 350,
      child: Center(
        child: Row(
          // we can pass any widget
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('A', style: TextStyle(fontSize: 25)),
            const Text('B', style: TextStyle(fontSize: 25)),
            const Text('C', style: TextStyle(fontSize: 25)),
            const Text('D', style: TextStyle(fontSize: 25)),
            const Text('E', style: TextStyle(fontSize: 25)),
            const Text('F', style: TextStyle(fontSize: 25)),
            ElevatedButton(
                onPressed: () {
                  print('tapped');
                },
                child: const Text('Tap on me')),
          ],
        ),
      ),
    );
  }

  //A Main Axis Alignment for Row with center
  SizedBox mainAxisAlignmentForRowWithcenter() {
    return SizedBox(
      width: 350,
      child: Row(
        // we can pass any widget
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('A', style: TextStyle(fontSize: 25)),
          const Text('B', style: TextStyle(fontSize: 25)),
          const Text('C', style: TextStyle(fontSize: 25)),
          const Text('D', style: TextStyle(fontSize: 25)),
          const Text('E', style: TextStyle(fontSize: 25)),
          const Text('F', style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                print('tapped');
              },
              child: const Text('Tap on me')),
        ],
      ),
    );
  }

  //A Main Axis Alignment for Row with end
  Row mainAxisAlignmentForRowWithend() {
    return Row(
      // we can pass any widget
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const Text('A', style: TextStyle(fontSize: 25)),
        const Text('B', style: TextStyle(fontSize: 25)),
        const Text('C', style: TextStyle(fontSize: 25)),
        const Text('D', style: TextStyle(fontSize: 25)),
        const Text('E', style: TextStyle(fontSize: 25)),
        const Text('F', style: TextStyle(fontSize: 25)),
        ElevatedButton(
            onPressed: () {
              print('tapped');
            },
            child: const Text('Tap on me')),
      ],
    );
  }

  //A Main Axis Alignment for Row with end
  Container mainAxisAlignmentForRowWithendCrossAxisAlignmentcenter() {
    return Container(
      height: 300,
      color: Colors.red,
      child: Row(
        // we can pass any widget
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text('A', style: TextStyle(fontSize: 25)),
          const Text('B', style: TextStyle(fontSize: 25)),
          const Text('C', style: TextStyle(fontSize: 25)),
          const Text('D', style: TextStyle(fontSize: 25)),
          const Text('E', style: TextStyle(fontSize: 25)),
          const Text('F', style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                print('tapped');
              },
              child: const Text('Tap on me')),
        ],
      ),
    );
  }

  //A Main Axis Alignment for Row with center
  Container mainAxisAlignmentForRowWithcenterCrossAxisAlignmentcenter() {
    return Container(
      height: 300,
      color: Colors.red,
      child: Row(
        // we can pass any widget
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text('A', style: TextStyle(fontSize: 25)),
          const Text('B', style: TextStyle(fontSize: 25)),
          const Text('C', style: TextStyle(fontSize: 25)),
          const Text('D', style: TextStyle(fontSize: 25)),
          const Text('E', style: TextStyle(fontSize: 25)),
          const Text('F', style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                print('tapped');
              },
              child: const Text('Tap on me')),
        ],
      ),
    );
  }

  //A Main Axis Alignment for Column with center
  Container columnWithAxisCenter() {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.red,
      child: Column(
        // we can pass any widget
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('A', style: TextStyle(fontSize: 25)),
          const Text('B', style: TextStyle(fontSize: 25)),
          const Text('C', style: TextStyle(fontSize: 25)),
          const Text('D', style: TextStyle(fontSize: 25)),
          const Text('E', style: TextStyle(fontSize: 25)),
          const Text('F', style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                print('tapped');
              },
              child: const Text('Tap on me')),
        ],
      ),
    );
  }

  //A Main Axis Alignment for Column with center
  Container columnWithAxisspaceEvenly() {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.red,
      child: Column(
        // we can pass any widget
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text('A', style: TextStyle(fontSize: 25)),
          const Text('B', style: TextStyle(fontSize: 25)),
          const Text('C', style: TextStyle(fontSize: 25)),
          const Text('D', style: TextStyle(fontSize: 25)),
          const Text('E', style: TextStyle(fontSize: 25)),
          const Text('F', style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                print('tapped');
              },
              child: const Text('Tap on me')),
        ],
      ),
    );
  }

  Container columnWithcenter() {
    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
      child: Column(
        // we can pass any widget
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text('A', style: TextStyle(fontSize: 25)),
          const Text('B', style: TextStyle(fontSize: 25)),
          const Text('C', style: TextStyle(fontSize: 25)),
          const Text('D', style: TextStyle(fontSize: 25)),
          const Text('E', style: TextStyle(fontSize: 25)),
          const Text('F', style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                print('tapped');
              },
              child: const Text('Tap on me')),
        ],
      ),
    );
  }

  Container columnWithRow() {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.red,
      child: Column(
        // we can pass any widget
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('R1', style: TextStyle(fontSize: 25)),
          const Text('R2', style: TextStyle(fontSize: 25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print('tapped');
                  },
                  child: const Text('r1 Button')),
              ElevatedButton(
                  onPressed: () {
                    print('tapped');
                  },
                  child: const Text('r2 Button')),
            ],
          ),
          const Text('R3', style: TextStyle(fontSize: 25)),
          const Text('R4', style: TextStyle(fontSize: 25)),
          const Text('R5', style: TextStyle(fontSize: 25)),
          const Text('R6', style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                print('tapped');
              },
              child: const Text('Tap on me')),
        ],
      ),
    );
  }
}
