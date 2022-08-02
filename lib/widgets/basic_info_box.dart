import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicInfoBox extends StatefulWidget {
  const BasicInfoBox({Key? key}) : super(key: key);

  @override
  State<BasicInfoBox> createState() => _BasicInfoBoxState();
}

class _BasicInfoBoxState extends State<BasicInfoBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 38, 48, 61),
          // border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Divider(
                endIndent: 140,
                indent: 140,
                thickness: 2,
                color: Colors.grey,
              ),
              const basic_box_title(title: "Car Status"),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    const Icon(
                      Icons.gpp_good_rounded,
                      color: Colors.green,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "All Perfect to Ride",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const basic_box_title(title: "Trips"),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      "Your last ride : 1h 23min",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const basic_box_title(title: "Maintenence"),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      "Remaining to Service : 1567 km",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class basic_box_title extends StatelessWidget {
  final String title;
  const basic_box_title({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
