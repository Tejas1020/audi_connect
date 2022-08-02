import 'package:audi_connect/pages/screens/audio_player_page.dart';
import 'package:flutter/material.dart';

class MusicPlayerCard extends StatefulWidget {
  const MusicPlayerCard({Key? key}) : super(key: key);

  @override
  State<MusicPlayerCard> createState() => _MusicPlayerCardState();
}

class _MusicPlayerCardState extends State<MusicPlayerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 2.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage("assets/img/Unstoppable.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: IconButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => AudioPlayerPage(),
          ),
        ),
        icon: Image.asset(
          "assets/icons/play.png",
          // color: Colors.white,
          height: 50,
        ),
      ),
    );
  }
}
