import 'package:flutter/material.dart';

class DropDownHelper extends StatefulWidget {
  const DropDownHelper({super.key});

  @override
  State<DropDownHelper> createState() => DropDownHelperState();
}

class DropDownHelperState extends State<DropDownHelper> {
  List dropDownList = [
    {"title": "BCA", "value": "1"},
    {"title": "MCA", "value": "2"},
    {"title": "B.tech", "value": "3"},
    {"title": "BBA", "value": "4"},
    {"title": "Polytechnic", "value": "5"},
  ];

  String defaultValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Drop Down Example',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            InputDecorator(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                contentPadding: const EdgeInsets.all(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: defaultValue,
                    isExpanded: true,
                    menuMaxHeight: 300,
                    items: <DropdownMenuItem<String>>[
                      getFirstItem(),
                      ...dropDownList.map<DropdownMenuItem<String>>((data) {
                        var displayText = Text(data['title']);
                        var itemValue = data['value'];
                        return DropdownMenuItem(
                            value: itemValue, child: displayText);
                      }).toList()
                    ],
                    onChanged: (newValue) {
                      print("User selec the value $newValue");
                      setState(() {
                        defaultValue = newValue!;
                      });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> getFirstItem() {
    return const DropdownMenuItem(value: '', child: Text('Seelect Course'));
  }
}
