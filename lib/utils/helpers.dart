import 'package:flutter/cupertino.dart';

double deviceWidth = 1440;
double tabletWidth = 750;

currentWidth(BuildContext context) => MediaQuery.sizeOf(context).width;

deviceHeight(BuildContext context) => MediaQuery.sizeOf(context).height;

EdgeInsets outsidePadding = const EdgeInsets.all(16);

SizedBox verticalSpaceTiny = const SizedBox(
  height: 4,
);

SizedBox verticalSpaceSmall = const SizedBox(
  height: 8,
);

SizedBox verticalSpaceMedium = const SizedBox(
  height: 12,
);

SizedBox verticalSpaceBig = const SizedBox(
  height: 12,
);

SizedBox verticalSpaceLarge = const SizedBox(
  height: 16,
);

SizedBox verticalSpace(double height) => SizedBox(
      height: height,
    );

SizedBox horizontalSpaceTiny = const SizedBox(
  width: 4,
);

SizedBox horizontalSpaceSmall = const SizedBox(
  width: 8,
);

SizedBox horizontalSpaceMedium = const SizedBox(
  width: 12,
);

SizedBox horizontalSpaceBig = const SizedBox(
  width: 16,
);

SizedBox horizontalSpaceLarge = const SizedBox(
  width: 48,
);

SizedBox horizontalSpace(double width) => SizedBox(
      width: width,
    );
