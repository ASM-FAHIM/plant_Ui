import 'package:flutter/material.dart';
import 'package:plant_app/module/module_name/views/components/featured_plants.dart';
import 'package:plant_app/module/module_name/views/components/header_with_searchbar.dart';
import 'package:plant_app/module/module_name/views/components/recommends_plants.dart';
import 'package:plant_app/module/module_name/views/components/title_with_more_btn.dart';
import 'package:plant_app/utils/styles/k_colors.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            onPressed: () {},
          ),
          RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", onPressed: () {}),
          FeaturedPlants(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
