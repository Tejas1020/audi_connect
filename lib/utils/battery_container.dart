import 'dart:async';

import 'package:battery/battery.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'dart:math' as math;

class BatteryContainer extends StatefulWidget {
  const BatteryContainer({Key? key}) : super(key: key);

  @override
  State<BatteryContainer> createState() => _BatteryContainerState();
}

class _BatteryContainerState extends State<BatteryContainer> {
  var battery = Battery();
  int batteryLevel = 100;
  BatteryState batteryState = BatteryState.full;
  late Timer timer;
  late StreamSubscription subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listenBatteryLevel();
    listenBatteryState();
  }

  void listenBatteryState() =>
      subscription = battery.onBatteryStateChanged.listen((batteryState) {
        setState(() => this.batteryState = batteryState);
      });

  void listenBatteryLevel() {
    updateBatteryLevel();

    timer = Timer.periodic(
      Duration(seconds: 5),
      (_) async => updateBatteryLevel(),
    );
  }

  Future updateBatteryLevel() async {
    final batteryLevel = await battery.batteryLevel;

    setState(() => this.batteryLevel = batteryLevel);
  }

  @override
  void dispose() {
    timer.cancel();
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            buildBatteryLevel(batteryLevel),
            // SizedBox(height: 10),
            buildBatteryState(batteryState),
            Text(
              "470 km",
              style: GoogleFonts.libreBaskerville(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBatteryLevel(int batteryLevel) => Text(
        '$batteryLevel%',
        style: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      );

  Widget buildBatteryState(BatteryState batteryState) {
    // final style = TextStyle(fontSize: 32, color: Colors.black);
    // final double size = 300;

    switch (batteryState) {
      case BatteryState.full:
        final color = Colors.green;

        return Column(
          children: [
            // Icon(
            //   Icons.battery_full,
            //   size: 50,
            //   color: color,
            // ),
            Transform.rotate(
              angle: -math.pi * 1.5,
              child: Image.asset(
                "assets/icons/battery-full.png",
                height: 50,
                color: color,
              ),
            ),
            Text(
              'Full!',      
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );

      case BatteryState.charging:
        final color = Colors.green;
        return Column(
          children: [
            Icon(
              Icons.battery_charging_full,
              size: 50,
              color: color,
            ),
            Text(
              'Charging...',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );

      case BatteryState.discharging:
      default:
        final color = Colors.red;
        return Column(
          children: [
            // Icon(
            //   Icons.battery_alert,
            //   size: 50,
            //   color: color,
            // ),
            Image.asset("assets/icons/battery_discharging.png",
                color: color, height: 50),
            Text(
              'Discharging...',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
    }
  }
}
