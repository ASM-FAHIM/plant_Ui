import 'package:flutter/material.dart';
import 'package:plant_app/module/module_name/views/components/header_with_searchbar.dart';
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
          Container(
            width: size.width * 0.4,
            margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: Column(
              children: [
                Image.asset("assets/images/image_1.png"),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Row(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Samantha\n",
                            style: Theme.of(context).textTheme.button)
                      ]))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
