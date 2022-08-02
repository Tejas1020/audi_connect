import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audi_connect/utils/ac_button.dart';
import 'package:audi_connect/utils/door_button.dart';
import 'package:audi_connect/utils/engine_button.dart';

class BasicInfoButton extends StatefulWidget {
  const BasicInfoButton({Key? key}) : super(key: key);

  @override
  State<BasicInfoButton> createState() => _BasicInfoButtonState();
}

class _BasicInfoButtonState extends State<BasicInfoButton> {
  List<bool> isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent,
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
      ),
      child: ToggleButtons(
        // direction: Axis.vertical,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.blue,
        renderBorder: false,
        borderRadius: BorderRadius.circular(15),
        isSelected: isSelected,
        children: <Widget>[
          EngineButton(),
          DoorButton(),
          ACButton(),
        ],
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      ),
    );
  }
}
