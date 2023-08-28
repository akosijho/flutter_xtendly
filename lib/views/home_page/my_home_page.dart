import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/helpers.dart';
import 'package:flutter_xtendly/views/home_page/widgets/catergory_section.dart';
import 'package:flutter_xtendly/views/home_page/widgets/footer.dart';
import 'package:flutter_xtendly/views/home_page/widgets/page_hero.dart';
import 'package:flutter_xtendly/views/home_page/widgets/sale_section.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
      width: MediaQuery.sizeOf(context).width,
            child: SingleChildScrollView(
          child: Column(
            children: [
              const PageHero(),
              const CategorySection(),
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: const Offset(0.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: currentWidth(context) > 986 ? 240 : 16),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                          currentWidth(context) > 986 ? MainAxisAlignment.spaceAround : MainAxisAlignment.center,
                      children: List<Widget>.generate(
                          currentWidth(context) > 986 ? 4 : 1,
                          (index) => Text(
                                "SALE",
                                style: TextStyle(
                                    fontSize: currentWidth(context) > tabletWidth ? 50 : 32,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xffCF4242)),
                              )),
                    ),
                  ),
                ),
              ),
              // verticalSpace(16),
              const SaleSection(),
              const Footer()
            ],
          ),
      ),
    ),
        ));
  }
}
