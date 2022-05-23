// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:shoping/homePageDetails/product_cart.dart';
import 'package:shoping/models/Product.dart';
import 'package:shoping/screen/constants.dart';

class NewArivall extends StatelessWidget {
  const NewArivall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: defaultPadding),
        SectionTitle(title: "New Arrival", press: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length, 
              (index) => ProductCard(
                image: demo_product[index].image,
                title: demo_product[index].title,
                press: () {},
                price: demo_product[index].price, 
                bgcolor: demo_product[index].bgColor,
              ))
          ),
        ),
      ],
    );
  }
}
