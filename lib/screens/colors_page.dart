import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/number_items.dart';
import '../models/number_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<item> colors = const [
    item(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'black',
      sound: 'assets/sounds/colors/black.wav',
    ),
    item(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown',
        sound: 'assets/sounds/colors/brown.wav'),
    item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      sound: 'assets/sounds/colors/dusty_yellow.wav',
    ),
    item(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
      sound: 'assets/sounds/colors/gray.wav',
    ),
    item(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
      sound: 'assets/sounds/colors/green.wav',
    ),
    item(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
      sound: 'assets/sounds/colors/red.wav',
    ),
    item(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'white',
      sound: 'assets/sounds/colors/white.wav',
    ),
    item(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'yellow',
      sound: 'assets/sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('colors'),
        backgroundColor: Color(0xff008B8B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: colors[index],
            color: Color.fromARGB(181, 0, 139, 139),
          );
        },
        // children: getList(number),
      ),
    );
  }
}
