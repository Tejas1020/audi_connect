import 'package:audi_connect/widgets/basic_info_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audi_connect/widgets/basic_info_box.dart';
import 'dart:math' as math;

class CarHealthPage extends StatefulWidget {
  const CarHealthPage({Key? key}) : super(key: key);

  @override
  State<CarHealthPage> createState() => _CarHealthPageState();
}

class _CarHealthPageState extends State<CarHealthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "Car Status",
            style: GoogleFonts.libreBaskerville(),
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "Audi\n",
                    style: GoogleFonts.libreBaskerville(
                      textStyle: const TextStyle(fontSize: 25),
                    ),
                  ),
                  TextSpan(
                    text: "RS e-tron GT",
                    style: GoogleFonts.libreBaskerville(
                        textStyle:
                            const TextStyle(fontSize: 25, color: Colors.grey)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: 'audi',
                child: Image.asset(
                  "assets/cars/audi_rs_e_tron_gt_2.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                ),
              ),
            ),
            BasicInfoBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    car_info_tabs(
                        icon: "assets/icons/brake.png",
                        title: "Brake fluid temp.",
                        info: "105°C"),
                    SizedBox(height: 5),
                    car_info_tabs(
                        icon: "assets/icons/coolant_temp.png",
                        title: "Coolant temp.",
                        info: "92°C"),
                    SizedBox(height: 5),
                    car_info_tabs(
                        icon: "assets/icons/battery_volatage.png",
                        title: "Battery volatage.",
                        info: "14.1 V"),
                    SizedBox(height: 5),
                    car_info_tabs(
                        icon: "assets/icons/temperature_inside.png",
                        title: "Temp. inside car.",
                        info: "20°C"),
                    SizedBox(height: 5),
                    car_info_tabs(
                        icon: "assets/icons/windshield.png",
                        title: "Windshield Washing\n Fluid remaining",
                        info: "3L"),
                  ],
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class car_info_tabs extends StatelessWidget {
  final String title;
  final String icon;
  final String info;
  const car_info_tabs({
    Key? key,
    required this.title,
    required this.icon,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon,
          height: 25,
          // color: Colors.white54,
          color: Colors.green,
        ),
        SizedBox(width: 15),
        Column(
          children: [
            basic_box_title(title: title),
            Text(
              info,
              style: GoogleFonts.libreBaskerville(
                textStyle: const TextStyle(fontSize: 25),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
