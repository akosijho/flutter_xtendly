import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/utils.dart';
import 'package:flutter_xtendly/widgets/widgets.dart';

class PageHero extends StatelessWidget {
  const PageHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      height: currentWidth(context) > tabletWidth ? 1024 : 812,
      child: currentWidth(context) > tabletWidth
          ? Stack(
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
                    width: currentWidth(context) > tabletWidth && currentWidth(context) < 1200 ? 300 : 381,
                  ),
                ),
                Positioned(
                  left: 716,
                  top: 215,
                  child: Image.asset(
                    AssetImages.product_4,
                    fit: BoxFit.fill,
                    width: currentWidth(context) > tabletWidth && currentWidth(context) < 1200 ? 300 : 724,
                  ),
                ),
                Positioned(
                  left: 355,
                  top: 289,
                  child: Image.asset(
                    AssetImages.product_2,
                    fit: BoxFit.fill,
                    width: currentWidth(context) > tabletWidth && currentWidth(context) < 1200 ? 300 : 387,
                  ),
                ),
                if (currentWidth(context) > tabletWidth && currentWidth(context) > 1200)
                  const Positioned(
                      left: 611,
                      top: 805,
                      child: MyButton(
                        label: "Shop Now",
                      )),
                if (currentWidth(context) > tabletWidth && currentWidth(context) < 1200)
                  const Align(
                    alignment: Alignment.center,
                    child: MyButton(
                      label: "Shop Now",
                    ),
                  )
              ],
            )
          : Stack(
              children: [
                Image.asset(
                  AssetImages.rectangle_2,
                  fit: BoxFit.fill,
                  width: deviceWidth,
                  height: 812,
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
                  right: 0,
                  top: 112,
                  child: Image.asset(
                    AssetImages.product_4,
                    fit: BoxFit.fill,
                    width: 296,
                  ),
                ),
                Positioned(
                  left: 19,
                  top: 294,
                  child: Image.asset(
                    AssetImages.product_2,
                    fit: BoxFit.fill,
                    width: 240,
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 497,
                  child: Image.asset(
                    AssetImages.product_1,
                    fit: BoxFit.fill,
                    width: 240,
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: MyButton(
                    label: "Shop Now",
                  ),
                )
              ],
            ),
    );
  }
}
