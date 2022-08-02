import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final leftMirrorProvider = StateNotifierProvider((ref) => Counter());

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
  void decrement() => state--;
}

class LeftSideMirrorCard extends ConsumerWidget {
  const LeftSideMirrorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(leftMirrorProvider);
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Left",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                ref.read(leftMirrorProvider.notifier).increment();
              },
              icon: const Icon(
                Icons.keyboard_arrow_up_outlined,
                color: Colors.red,
              ),
            ),
            Text(
              "${count.toString()}°",
              style: GoogleFonts.libreBaskerville(
                textStyle: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            IconButton(
              onPressed: () {
                ref.read(leftMirrorProvider.notifier).decrement();
              },
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.blue,
              ),
            ),
            Text(
              "Mirror",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
