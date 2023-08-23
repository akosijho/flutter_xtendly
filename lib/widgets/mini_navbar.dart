import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/helpers.dart';

class MiniNavbar extends StatelessWidget {
  const MiniNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _label("Help    |     Join Us     |     Sign In       "),
        horizontalSpaceSmall,
        _divider()

      ],
    );
  }

  _label(String label){
    return Text(label,
    style: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: Colors.black
    ),);
  }

  _divider(){
    return Divider(
      color: Colors.black,

    );
  }
}
