import 'package:audi_connect/widgets/basic_info_buttons.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class EngineStarterPage extends StatefulWidget {
  const EngineStarterPage({Key? key}) : super(key: key);

  @override
  State<EngineStarterPage> createState() => _EngineStarterPageState();
}

class _EngineStarterPageState extends State<EngineStarterPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.topRight,
              colors: [
                Color.fromARGB(255, 241, 0, 0),
                // Color(0x909090),
                Colors.transparent
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/engine_starter.png",
                  height: MediaQuery.of(context).size.height / 2,
                ),
                AnimatedBuilder(
                  animation: animationController,
                  builder: (context, child) {
                    return Container(
                      decoration: ShapeDecoration(
                        color: Colors.orange.withOpacity(0.5),
                        shape: CircleBorder(),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0 * animationController.value),
                        child: child,
                      ),
                    );
                  },
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(200, 130),
                        shape: CircleBorder(),
                        primary: Colors.black),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          endIndent: 70,
                          indent: 70,
                          thickness: 2,
                          color: Colors.red,
                        ),
                        Text(
                          "START ENGINE",
                          style: GoogleFonts.poppins(),
                        ),
                      ],
                    ),
                  ),
                ),
                BasicInfoButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
