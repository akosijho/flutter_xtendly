import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_xtendly/utils/asset_images.dart';
import 'package:flutter_xtendly/utils/helpers.dart';
import 'package:flutter_xtendly/widgets/widgets.dart';

class MyNavbar extends StatelessWidget implements PreferredSizeWidget {
  const MyNavbar({super.key});

  static const headerTab = ["HOME", "NEW ARRIVAL", "SHOP", "LAST COLLECTION", "MEN", "WOMEN"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffD9D9D9)),
            alignment: Alignment.center,
            child: const Text(
              "LOGO",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(child: Container()),
          ...headerTab.map((e) => HeaderTabsText(label: e)),
          const SizedBox(
            width: 56,
          ),
          SizedBox(
            width: 194,
            height: 30,
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  contentPadding: const EdgeInsets.all(15),
                  fillColor: const Color(0xffE4E4E4),
                  hoverColor: Colors.transparent,
                  filled: true,
                  focusColor: Colors.transparent,
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(30))),
            ),
          ),
          horizontalSpace(24),
          SizedBox(
            width: 26,
            height: 30,
            child: Stack(
              children: [
                SvgPicture.asset(
                  AssetImages.bag,
                  width: 21,
                  height: 25,
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                      child: Text(
                        "0",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.47)),
                      ),
                    ))
              ],
            ),
          ),
          horizontalSpaceBig,
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SvgPicture.asset(
              AssetImages.star,
              width: 28,
              height: 28,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(66);
}
