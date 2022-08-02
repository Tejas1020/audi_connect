import 'package:audi_connect/utils/left_side_mirror_cards.dart';
import 'package:audi_connect/utils/right_side_mirror_cards.dart';
import 'package:audi_connect/widgets/battreyMapBar.dart';
import 'package:audi_connect/widgets/mirrorsModeBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:battery_plus/battery_plus.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: "Audi RS e-tron GT",
                      style: GoogleFonts.libreBaskerville(
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: "audi",
                  child: Image.asset(
                    "assets/cars/audi_rs_e_tron_gt.png",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                ),
              ),
              BatteryMapBar(),
              MirrorsModeBar(),
            ],
          ),
        ),
      ),
    );
  }
}
