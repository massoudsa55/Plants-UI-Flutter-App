import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_ui_flutter_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String icon;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        padding: const EdgeInsets.all(cDefaultPadding / 2),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: cBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 22,
              color: cPrimaryColor.withOpacity(0.22),
            ),
            const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ],
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
