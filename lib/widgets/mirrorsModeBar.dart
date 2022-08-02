import 'package:audi_connect/utils/left_side_mirror_cards.dart';
import 'package:audi_connect/utils/music_player_card.dart';
import 'package:audi_connect/utils/right_side_mirror_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MirrorsModeBar extends StatefulWidget {
  const MirrorsModeBar({Key? key}) : super(key: key);

  @override
  State<MirrorsModeBar> createState() => _MirrorsModeBarState();
}

class _MirrorsModeBarState extends State<MirrorsModeBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftSideMirrorCard(),
          MusicPlayerCard(),
          RightSideMirrorCard(),
        ],
      ),
    );
  }
}
