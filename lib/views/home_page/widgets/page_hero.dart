import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/utils.dart';
import 'package:flutter_xtendly/widgets/widgets.dart';

class PageHero extends StatelessWidget {
  const PageHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: currentWidth(context) > tabletWidth ? 1024 : 812,
      alignment: Alignment.center,
      child: currentWidth(context) > tabletWidth
          ? Stack(alignment: Alignment.topCenter, children: [
              Image.asset(
                AssetImages.rectangle_2,
                fit: BoxFit.fill,
                width: MediaQuery.sizeOf(context).width,
                height: 1024,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(width: MediaQuery.sizeOf(context).width, child: const MiniNavbar()),
              ),
              const Positioned(
                  top: 16,
                  child: Column(
                    children: [
                      MyNavbar(),
                    ],
                  )),
              Center(
                child: SizedBox(
                  width: deviceWidth,
                  child: Stack(
                    children: [
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
                  ),
                ),
              )
            ])
          : Stack(
              children: [
                Image.asset(
                  AssetImages.rectangle_2,
                  fit: BoxFit.fill,
                  width: deviceWidth,
                  height: 812,
                ),
                Positioned(
                    top: 16,
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        children: [
                          if (currentWidth(context) > tabletWidth) const MiniNavbar(),
                          const MyNavbar(),
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
