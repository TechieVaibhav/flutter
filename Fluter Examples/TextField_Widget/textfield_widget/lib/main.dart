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
  var emailTextController = TextEditingController();
  var passTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
        color: Colors.white,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailTextController,
              enabled: true,
              decoration: InputDecoration(
                hintText: 'Enter email',
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2),
                ),
                suffix: const Text('User name exists'),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye_rounded,
                      color: Colors.amberAccent),
                  onPressed: () {},
                ),
                prefixIcon: IconButton(
                  icon: const Icon(Icons.email, color: Colors.blueGrey),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: passTextController,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                  hintText: 'Enter password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11)))),
            ),
            ElevatedButton(
                onPressed: () {
                  String email = emailTextController.text.toString();
                  String pass = passTextController.text;
                  print('enter value $email and pass $pass');
                },
                child: const Text('validate'))
          ],
        ),
      )),
    );
  }
}
