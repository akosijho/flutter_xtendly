import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/utils.dart';
import 'package:flutter_xtendly/widgets/widgets.dart';

class PageHero extends StatelessWidget {
  const PageHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      height: 1024,
      child: Stack(
        children: [
          Image.asset(
            AssetImages.rectangle_2,
            fit: BoxFit.fill,
            width: deviceWidth,
            height: 1024,
          ),
          Positioned(
              top: 0,
              child: SizedBox(
                width: deviceWidth,
                child: const Column(
                  children: [
                    MiniNavbar(),
                    MyNavbar(),
                  ],
                ),
              )),
          Positioned(
            left: 0,
            top: 256,
            child: Image.asset(
              AssetImages.product_1,
              fit: BoxFit.fill,
              width: 381,
            ),),Positioned(
            left: 716,
            top: 215,
            child: Image.asset(
              AssetImages.product_4,
              fit: BoxFit.fill,
              width: 724,
            ),),
          Positioned(
            left: 355,
            top: 289,
            child: Image.asset(
              AssetImages.product_2,
              fit: BoxFit.fill,
              width: 387,
            ),),
          const Positioned(
              left: 611,
              top: 805,
              child: MyButton(
                label: "Shop Now",
              )
          ),
        ],
      ),
    );
  }
}
