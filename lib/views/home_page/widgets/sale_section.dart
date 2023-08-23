import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/asset_images.dart';
import 'package:flutter_xtendly/utils/helpers.dart';
import 'package:flutter_xtendly/widgets/my_button.dart';

class SaleSection extends StatelessWidget {
  const SaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      color: Colors.white,
      padding: const EdgeInsets.all(76),
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.spaceBetween,
            children: List<Widget>.generate(
                8,
                (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              width: 316,
                            ),
                            Image.asset(
                              AssetImages.product_5,
                              width: 272,
                              height: 400,
                            ),
                            Positioned(
                                top: 24,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  alignment: Alignment.center,
                                  color: const Color(0xffE0CA9E),
                                  child: const Text(
                                    "15% OFF",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
                                  ),
                                ))
                          ],
                        ),
                        verticalSpaceMedium,
                        const Text(
                          "LOREM IPSUM",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text(
                          "Lorem ipsum",
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        verticalSpace(48)
                      ],
                    )),
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
