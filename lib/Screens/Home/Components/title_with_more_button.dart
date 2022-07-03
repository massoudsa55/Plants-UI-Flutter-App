import 'package:flutter/material.dart';
import 'package:plants_ui_flutter_app/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(title: title),
          const Spacer(),
          TextButton(
            onPressed: press,
            style: TextButton.styleFrom(
              backgroundColor: cPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              "More",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.centerLeft,
      height: 24,
      //color: Colors.amber.shade200,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: cDefaultPadding / 4),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: cDefaultPadding / 4),
              height: 7,
              color: cPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
