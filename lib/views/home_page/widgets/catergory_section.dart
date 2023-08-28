import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/utils.dart';
import 'package:flutter_xtendly/widgets/my_button.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.fromLTRB(66, 96, 66, 96),
      decoration: const BoxDecoration(color: Color(0xffEBEAE8)),
      child: Column(
          children: [
            SizedBox(
              width: deviceWidth,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  _image(AssetImages.product_5, "Sweatshirts", context),
                  _image(AssetImages.product_3, "Hoodies", context),
                  _image(AssetImages.product_5, "Pair", context),
                ],
              ),
            ),
            verticalSpace(66),
        MediaQuery.sizeOf(context).width >tabletWidth ? const Text(
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit,
          sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
          Ut enim ad minim veniam, quis nostrud exercitation ullamco 
          laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
          in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
          deserunt mollit anim id est laborum.""",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ) : Container()
          ],
        ));
  }

  _image(String path, String label, BuildContext context) {
    return Container(
      width: currentWidth(context) > tabletWidth ? 410 : 204,
      height: currentWidth(context) > tabletWidth ? 600 : 300,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(path))
      ),
      child: MyButton(
        color: const Color(0xffE4E4E4),
        label: label,
        width: currentWidth(context) > tabletWidth ? null : 132,
        height: currentWidth(context) > tabletWidth ? null : 25,
      )
    );
  }
}
