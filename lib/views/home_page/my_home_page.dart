import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/helpers.dart';
import 'package:flutter_xtendly/views/home_page/widgets/page_hero.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
      width: deviceWidth,
      child: const SingleChildScrollView(
          child: Column(
            children: [
              PageHero()
            ],
          ),
      ),
    ),
        ));
  }
}
