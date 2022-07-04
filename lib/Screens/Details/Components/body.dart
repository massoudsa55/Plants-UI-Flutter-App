import 'package:flutter/material.dart';
import 'package:plants_ui_flutter_app/constants.dart';

import 'button_boy_and_description.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: const [
          ImageAndIcons(),
          TitleAndPrice(
            title: "Angelica",
            country: "Algeria",
            price: 450,
          ),
          SizedBox(height: cDefaultPadding),
          ButtonBoyAndDescription(),
        ],
      ),
    );
  }
}
