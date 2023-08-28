import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/asset_images.dart';
import 'package:flutter_xtendly/utils/helpers.dart';
import 'package:flutter_xtendly/widgets/my_button.dart';

class SaleSection extends StatelessWidget {
  const SaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      padding: EdgeInsets.all(currentWidth(context) > tabletWidth ? 76 : 16),
      child: Column(
        children: [
          SizedBox(
            width: deviceWidth,
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.spaceBetween,
                children: List<Widget>.generate(
                    8,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: currentWidth(context) > tabletWidth ? 316 : 156,
                                ),
                                Image.asset(
                                  AssetImages.product_5,
                                  width: currentWidth(context) > tabletWidth ? 272 : 141,
                                  height: currentWidth(context) > tabletWidth ? 400 : 200,
                                ),
                                Positioned(
                                    top: 24,
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      alignment: Alignment.center,
                                      color: const Color(0xffE0CA9E),
                                      child: Text(
                                        "15% OFF",
                                        style: TextStyle(
                                            fontSize: currentWidth(context) > tabletWidth ? 18 : 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ))
                              ],
                            ),
                            verticalSpaceMedium,
                            Text(
                              "LOREM IPSUM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: currentWidth(context) > tabletWidth ? 18 : 15),
                            ),
                            Text(
                              "Lorem ipsum",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: currentWidth(context) > tabletWidth ? 18 : 12),
                            ),
                            verticalSpace(48)
                          ],
                        )),
              ),
            ),
          ),
          verticalSpace(24),
          MyButton(label: "More",
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: const Offset(0.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),),
          verticalSpace(24)
        ],
      ),
    );
  }
}
