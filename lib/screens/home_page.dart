import 'package:flutter/material.dart';
import 'package:flutter_app_4/screens/colors_page.dart';
import 'package:flutter_app_4/screens/family_page.dart';
import 'package:flutter_app_4/screens/numbers_page.dart';

import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(132, 163, 222, 233),
      appBar: AppBar(
        backgroundColor: Color(0xff66CDAA),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            'Numbers',
            Color(0xff8FBC8B),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            'Family Members',
            Color(0xff20B2AA),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilyPage();
                  },
                ),
              );
            },
          ),
          Category(
            'Colors',
            Color(0xff008B8B),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
