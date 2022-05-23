import 'package:flutter/material.dart';
import 'package:shoping/screen/constants.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, 
    required this.image, 
    required this.title, 
    required this.price, 
    required this.bgcolor, 
    required this.press,
  }) : super(key: key);
  final String image,title;
  final int price;
  final Color bgcolor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding/2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
         children: [
          Container(
            width: double.infinity,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius:const BorderRadius.all(Radius.circular(defaultBorderRadius)),
            ),
            child: Image.asset(image,
            height: 132,),
          ),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Expanded(
                child: 
                Text(title,style: const TextStyle(color: Colors.black),)),
                const SizedBox(height: defaultPadding/4,),
                Text("\$"+price.toString(),style: Theme.of(context).textTheme.subtitle2,),
            ],
          ),
        ],
      ),),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key, 
    required this.title, 
    required this.press, 
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style:Theme.of(context).textTheme.subtitle1!.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),),
        TextButton(
          onPressed: press,
          child: const Text("See All",
          style: TextStyle(color: Colors.black54),)),
      ],
    );
  }
}