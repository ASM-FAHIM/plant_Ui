import 'package:flutter/material.dart';

import '../../../../utils/styles/k_colors.dart';

class TitleWithMoreBtn extends StatelessWidget {
  String title;
  VoidCallback onPressed;
  TitleWithMoreBtn({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: KColor.secondary.color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onPressed: onPressed,
              child: Text(
                "More",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  String? text;
  TitleWithCustomUnderline({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              text!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(right: 5),
                height: 7,
                color: KColor.secondary.color.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
