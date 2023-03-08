import 'package:flutter/material.dart';
import 'package:plandapp/constants.dart';
import 'package:plandapp/screens/details/details_screen.dart';
import 'package:plandapp/screens/home/components/featured_pland.dart';
import 'recomend_plant.dart';
import 'title_with_more_bbtn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomendedPlantCard(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  country: 'Russia',
                  price: 450,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsScreen()),
                    );
                  },
                ),
                RecomendedPlantCard(
                  image: 'assets/images/image_2.png',
                  title: 'Angelaca',
                  country: 'Russia',
                  price: 440,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsScreen()),
                    );
                  },
                ),
                RecomendedPlantCard(
                  image: 'assets/images/image_3.png',
                  title: 'Samantha',
                  country: 'Russia',
                  price: 450,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          const FeaturedPlant(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
