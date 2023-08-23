import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/helpers.dart';
import 'package:flutter_xtendly/views/home_page/widgets/catergory_section.dart';
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
            child: SingleChildScrollView(
          child: Column(
            children: [
              const PageHero(),
              const CategorySection(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 240),
                decoration: BoxDecoration(color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: const Offset(0.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List<Widget>.generate(
                      4,
                      (index) => const Text(
                            "SALE",
                            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600, color: Color(0xffCF4242)),
                          )),
                ),
              ),
              verticalSpace(16),
              Container(
                height: 60,
                color: Colors.white,
              )
            ],
          ),
      ),
    ),
        ));
  }
}
