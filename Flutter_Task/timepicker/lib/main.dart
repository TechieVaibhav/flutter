import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      home: new MyHomePage(title: 'Flutter background demo page'),
    );
    return MaterialApp(
      title: 'Flutter background demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
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
  TextEditingController selectedDate = TextEditingController();

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
        backgroundColor: Colors.orange,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(children: [
        const SizedBox(height: 30),
        const Text(
          'Set Clock',
          style:
              TextStyle(fontSize: 30, color: Color.fromRGBO(197, 198, 81, 1.0)),
        ),
        const SizedBox(height: 30),
        getTextField(context)
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  TextField getTextField(BuildContext context) {
    return TextField(
        readOnly: true,
        controller: selectedDate,
        enabled: true,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 30),
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "HH:MM am/pm",
          hintStyle: TextStyle(fontSize: 30, color: Colors.white),
        ),
        onTap: () {
          openTimePicker(context);
        });
  }

  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> openTimePicker(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      initialEntryMode: TimePickerEntryMode.inputOnly,
      builder: (context, child) {
        var copyWith =
            MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true);
        return MediaQuery(
            data: copyWith,
            child: Theme(
              data: ThemeData.dark().copyWith(
                primaryTextTheme: const TextTheme(
                    titleMedium: TextStyle(
                        color: Colors.white)), //OK/Cancel button text color
                primaryColor: Colors.white, //Head background
                hintColor: Colors.white,
                unselectedWidgetColor: Colors.white,
                buttonTheme: const ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  buttonColor: Colors.white, // Set buttonColor here
                ),
                textButtonTheme: TextButtonThemeData(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => const Color.fromRGBO(89, 90, 89, 1.0)),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => const Color.fromRGBO(89, 90, 89, 1.0)),
                  ),
                ),
                //selection color
                //dialogBackgroundColor: Colors.white,//Background color
              ),
              child: child!,
            ));
      },
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
        selectedDate.text = picked.format(context);
      });
    }
  }

  TimePickerThemeData _timePickerTheme() {
    return TimePickerThemeData(
      backgroundColor: pickerbackgroundColor(),
      hourMinuteTextColor: Colors.white,
      hourMinuteTextStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      helpTextStyle: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
      dialTextColor: Colors.white,
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(0),
      ),
      dayPeriodTextStyle: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Color pickerbackgroundColor() {
    return const Color.fromRGBO(28, 30, 29, 1.0);
  }
}
