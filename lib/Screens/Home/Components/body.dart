import 'package:flutter/material.dart';
import 'package:plants_ui_flutter_app/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomends_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWithSearchBox(),
          TitleWithMoreButton(title: "Recomended", press: () {}),
          const RecomendsPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: cDefaultPadding),
        ],
      ),
    );
  }
}
