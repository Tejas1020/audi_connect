import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoorButton extends StatefulWidget {
  const DoorButton({Key? key}) : super(key: key);

  @override
  State<DoorButton> createState() => _DoorButtonState();
}

class _DoorButtonState extends State<DoorButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: EdgeInsets.all(15),
        // height: ,
        width: MediaQuery.of(context).size.width / 4.5,
        // width: 15,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Divider(
                endIndent: 20,
                indent: 20,
                thickness: 2,
                color: Colors.green,
              ),
              Image.asset(
                "assets/icons/lock.png",
                height: 40,
              ),
              Text(
                "Doors",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    // color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),
              Text(
                "Locked",
                style: GoogleFonts.libreBaskerville(
                  textStyle: TextStyle(
                    // color: Colors.black,
                    fontSize: 15,
                    // fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
