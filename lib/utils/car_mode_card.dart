import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarModes extends StatefulWidget {
  const CarModes({Key? key}) : super(key: key);

  @override
  State<CarModes> createState() => _CarModesState();
}

class _CarModesState extends State<CarModes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 2.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // Text("Mode" , style: GoogleFonts.libreBaskerville(textStyle: TextStyle(color: Colors.black),),
          Container(
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width / 2.6,
            child: ListWheelScrollView(
              itemExtent: 42,
              children: [
                Text(
                  "Dynamic Mode",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                Text(
                  "Sports Mode",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                Text(
                  "Comfort Mode",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                Text(
                  "Boost Mode",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                Text(
                  "Efficiency Mode",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                Text(
                  "Off-Road Mode",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
