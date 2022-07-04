import 'package:flutter/material.dart';
import 'package:plants_ui_flutter_app/Screens/Details/details_screen.dart';
import 'package:plants_ui_flutter_app/constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  void goToDetailsScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DetailsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlanCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Algeria",
            price: 450,
            press: () => goToDetailsScreen(context),
          ),
          RecomendPlanCard(
            image: "assets/images/image_2.png",
            title: "Samantha",
            country: "Algeria",
            price: 450,
            press: () => goToDetailsScreen(context),
          ),
          RecomendPlanCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Algeria",
            price: 450,
            press: () => goToDetailsScreen(context),
          ),
        ],
      ),
    );
  }
}

class RecomendPlanCard extends StatelessWidget {
  const RecomendPlanCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: cDefaultPadding,
          top: cDefaultPadding / 2,
          bottom: cDefaultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(cDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: cPrimaryColor.withOpacity(0.3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: cPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price".toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: cPrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
