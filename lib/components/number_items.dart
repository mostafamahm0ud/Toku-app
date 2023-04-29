import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:just_audio/just_audio.dart';

import '../models/number_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.number, required this.color});
  final Color color;
  final item number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(number.image),
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () {
                try {
                  final player = AudioPlayer(); // Create a player
                  final duration = player.setUrl(// Load a URL
                      number.sound); // Schemes: (https: | file: | asset: )
                  player.play();
                } catch (ex) {
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          // Spacer(flex: 1,)
          // GestureDetector(
          //   onTap: () {},
          //   child: Icon(
          //     Icons.play_arrow,
          //     color: Colors.white,
          //     size: 30,
          //   ),
          // ),
        ],
      ),
    );
  }
}
