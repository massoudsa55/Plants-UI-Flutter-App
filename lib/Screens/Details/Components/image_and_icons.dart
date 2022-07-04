import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_ui_flutter_app/constants.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: OrientationBuilder(
        builder: (context, orientation) => SizedBox(
          height: orientation == Orientation.portrait
              ? size.height * 0.8
              : size.width * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: cDefaultPadding * 3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: cDefaultPadding),
                          onPressed: () => Navigator.pop(context),
                          icon: SvgPicture.asset(
                            "assets/icons/back_arrow.svg",
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconCard(press: () {}, icon: "assets/icons/sun.svg"),
                      IconCard(press: () {}, icon: "assets/icons/icon_2.svg"),
                      IconCard(press: () {}, icon: "assets/icons/icon_3.svg"),
                      IconCard(press: () {}, icon: "assets/icons/icon_4.svg"),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(65),
                    bottomLeft: Radius.circular(65),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: cPrimaryColor.withOpacity(0.3),
                    ),
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                    image: AssetImage(
                      "assets/images/img.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
