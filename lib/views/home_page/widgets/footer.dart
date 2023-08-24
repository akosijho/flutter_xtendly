import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffEBEAE8),
      padding: EdgeInsets.symmetric(horizontal: currentWidth(context) > tabletWidth ? 88 : 28, vertical: 40),
      width: deviceWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                alignment: Alignment.center,
                child: const Text(
                  "LOGO",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              verticalSpace(32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AssetImages.contact,
                    width: 41,
                    height: 147,
                  ),
                  horizontalSpaceMedium,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceMedium,
                      _footerLabels("""Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt."""),
                      verticalSpaceLarge,
                      _footerLabels("""Lorem ipsum"""),
                      verticalSpace(28),
                      _footerLabels("""Lorem ipsum dolor sit amet"""),
                    ],
                  )
                ],
              ),
              verticalSpaceMedium,
              Image.asset(
                AssetImages.social,
                width: 214,
                height: 64,
              ),
              verticalSpaceMedium,
              if (currentWidth(context) < 970) ...[
                const Text(
                  "COLLECTION",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                ),
                verticalSpaceMedium,
                const Text(
                  "INFORMATION",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                ),
                verticalSpaceMedium,
                const Text(
                  'MORE',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                ),
              ]
            ],
          ),
          if (currentWidth(context) > 970) ...[
            _footerItems("COLLECTION"),
            _footerItems("INFORMATION"),
            _footerItems("MORE"),
          ]
        ],
      ),
    );
  }

  _footerLabels(String label) {
    return Text(
      label,
      overflow: TextOverflow.clip,
      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff676767)),
    );
  }

  Widget _footerItems(String title) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpaceMedium,
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
          ),
          verticalSpaceLarge,
          ...List<Widget>.generate(
              6,
              (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: _footerLabels('Lorem ipsum'),
                  ))
        ],
      );
}
