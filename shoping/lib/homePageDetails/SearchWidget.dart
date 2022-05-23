// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoping/screen/constants.dart';
  const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) {},
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Search items...",
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: SvgPicture.asset("assets/icons/Search.svg"),
        )
      ),
    );
  }
}