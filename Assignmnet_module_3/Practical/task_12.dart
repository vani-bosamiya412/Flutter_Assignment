// Make a toggle switch that changes the app’s background color when turned on or off. Use the Switch widget to handle the toggle state.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ToggleSwitch(), debugShowCheckedModeBanner: false,));
}

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitch ? Colors.blue.shade200 : Colors.white,
      appBar: AppBar(
        title: Text("Toggle Switch"),
        backgroundColor: Colors.blue.shade50,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("OFF", style: TextStyle(fontSize: 18),),
            SizedBox(width: 15,),
            Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              }
            ),
            SizedBox(width: 15,),
            Text("ON", style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
