import 'package:flutter/material.dart';

import '../../../../utils/styles/k_colors.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            image: "assets/images/image_1.png",
            title: "samantha",
            country: "russia",
            price: 400,
            onPressed: () {},
          ),
          RecommendedPlantCard(
            image: "assets/images/image_2.png",
            title: "angelica",
            country: "bangladesh",
            price: 400,
            onPressed: () {},
          ),
          RecommendedPlantCard(
            image: "assets/images/image_3.png",
            title: "raisa",
            country: "canada",
            price: 400,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  RecommendedPlantCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.country,
      required this.onPressed})
      : super(key: key);

  String image, title, country;
  VoidCallback onPressed;
  int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: KColor.secondary.color.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(
                            color: KColor.secondary.color.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: KColor.secondary.color),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
