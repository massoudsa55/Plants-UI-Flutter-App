import 'package:flutter/material.dart';
import 'package:plants_ui_flutter_app/constants.dart';

class ButtonBoyAndDescription extends StatelessWidget {
  const ButtonBoyAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.5,
          height: 84,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: cPrimaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              ),
            ),
            child: const Text(
              "Boy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: size.width * 0.5,
            height: 84,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: cBackgroundColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                ),
              ),
              child: const Text(
                "Description",
                style: TextStyle(
                  color: cPrimaryColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
