import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/number_items.dart';
import '../models/number_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<item> family = const [
    item(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'chichi',
      enName: 'father',
      sound: 'assets/sounds/family_members/father.wav',
    ),
    item(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'mother',
        sound: 'assets/sounds/family_members/mother.wav'),
    item(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'ani',
      enName: 'older brother',
      sound: 'assets/sounds/family_members/older_brother.wav',
    ),
    item(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'older sister',
      sound: 'assets/sounds/family_members/older_sister.wav',
    ),
    item(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otōto',
      enName: 'younger brother',
      sound: 'assets/sounds/family_members/younger_brohter.wav',
    ),
    item(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imōto',
      enName: 'younger sister',
      sound: 'assets/sounds/family_members/younger_sister.wav',
    ),
    item(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'son',
      sound: 'assets/sounds/family_members/son.wav',
    ),
    item(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'daugter',
      sound: 'assets/sounds/family_members/daughter.wav',
    ),
    item(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'sofu',
      enName: 'grandfather',
      sound: 'assets/sounds/family_members/grandfather.wav',
    ),
    item(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'sobo',
      enName: 'grandmother',
      sound: 'assets/sounds/family_members/grandmother.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff20B2AA),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: family[index],
            color: Color.fromARGB(172, 32, 178, 171),
          );
        },
        // children: getList(number),
      ),
    );
  }
}
