import 'package:flutter/material.dart';
import 'package:plandapp/constants.dart';
import 'package:plandapp/screens/details/components/image_and_icons.dart';
import 'package:plandapp/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                  child: const Text('Buy Now'),
                ),
              ),
              const Expanded(
                child: TextButton(
                  onPressed: null,
                  child: Text('Description'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
