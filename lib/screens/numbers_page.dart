import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/number_items.dart';
import '../models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<item> number = const [
    item(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    item(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two',
        sound: 'assets/sounds/numbers/number_two_sound.mp3'),
    item(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    item(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'four',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    item(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    item(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
    ),
    item(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'shichi',
      enName: 'seven',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    item(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    item(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyuu, ku',
      enName: 'nine',
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    item(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'juu',
      enName: 'ten',
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff8FBC8B),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: number[index],
            color: Color.fromARGB(179, 143, 188, 139),
          );
        },
        // children: getList(number),
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(Items(number: numbers[i]));
  //   }
  //   return itemsList;
  // }
}
