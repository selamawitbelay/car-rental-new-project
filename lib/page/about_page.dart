import 'package:car_rental/constant.dart';
import 'package:car_rental/components/defaultAppBar.dart';
import 'package:car_rental/components/defaultBackButton.dart';
import 'package:car_rental/components/notificationTiles.dart';
import 'package:flutter/material.dart';

import 'package:car_rental/components/descSection.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'About ',
        child: DefaultBackButton(),
      ),
      body: Column(
        children: [
          NotificationTiles(
            title: 'About Moged',
            subtitle: 'Something You Want',
            enable: false,
          ),
          Divider(),
          DescSection(
            text:
                "We are continuously improving the quality of our offer thus ensuring an ongoing and dynamic development of our company. All offered cars are provided with a producer’s guarantee as well as a full insurance and assistance package. Our rental service also includes a substitute car service in case of a mechanical failure or an accident, while the nationwide network of service points guarantees the highest maintenance of cars as well as immediate repair of any defects or damage.",
          ),
          DescSection(
            text:
                "Moged is particularly proud of its professional staff with over 10 years of car rental service experience. Our personnel ensures the agency’s advantage on the market both in terms of merchandise and sales as well as quality control and post-sale support (back-office & 24/7 technical service).",
          ),
        ],
      ),
    );
  }
}
