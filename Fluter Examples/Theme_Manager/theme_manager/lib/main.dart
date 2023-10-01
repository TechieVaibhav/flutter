import 'package:flutter/material.dart';
import 'package:theme_manager/ui_helper/util.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 100, 183, 58)),
        useMaterial3: true,
        textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.amberAccent),
            displayMedium: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                decorationColor: Colors.blue)),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Text('First item Font',
                  style: Theme.of(context).textTheme.displayLarge),
              Text('Second item Font', style: myTextStyle30()),
              Text('Third item Font',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: Colors.lightBlue)),
              Text('Fourth item Font', style: myTextStyle20()),
              Text('Fifth item Font',
                  style: myTextStyle11(textColor: Colors.black12))
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
