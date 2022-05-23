// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping/homePageDetails/NewArivall.dart';
import 'package:shoping/homePageDetails/Popular.dart';
import 'package:shoping/screen/constants.dart';

import 'Categories.dart';
import 'SearchWidget.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  get outlineInputBorder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "best Outfits for you",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              const SearchWidget(),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              const Categories(),
              NewArivall(),
              Popular()
            ],
          ),
        ),
      ),
    );
  }
}
