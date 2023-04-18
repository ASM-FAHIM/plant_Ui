import 'package:flutter/material.dart';
import '../../../../global/widget/global_svg_loader.dart';
import '../../../../utils/enum.dart';
import '../../../../utils/styles/k_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 50,
            color: KColor.secondary.color.withOpacity(0.23))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: GlobalSvgLoader(
                  imagePath: "assets/icons/flower.svg", svgFor: SvgFor.asset)),
          IconButton(
              onPressed: () {},
              icon: GlobalSvgLoader(
                  imagePath: "assets/icons/heart-icon.svg",
                  svgFor: SvgFor.asset)),
          IconButton(
              onPressed: () {},
              icon: GlobalSvgLoader(
                  imagePath: "assets/icons/user-icon.svg",
                  svgFor: SvgFor.asset)),
        ],
      ),
    );
  }
}
