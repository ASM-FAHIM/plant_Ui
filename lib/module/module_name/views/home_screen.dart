import 'package:flutter/material.dart';
import 'package:plant_app/global/widget/global_svg_loader.dart';
import 'package:plant_app/module/module_name/views/components/body.dart';
import 'package:plant_app/utils/enum.dart';
import 'package:plant_app/utils/styles/k_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(), body: Body());
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const GlobalSvgLoader(
              imagePath: "assets/icons/menu.svg", svgFor: SvgFor.asset)),
    );
  }
}
