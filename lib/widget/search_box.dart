import 'package:e_comm_app/utils/app_colors.dart';
import 'package:e_comm_app/utils/fontstyles.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appcolor.teritiaryColor),
      child: TextFormField(
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(Icons.search, size: 20),
          prefixIconColor: appcolor.secondaryColor,
          hintText: "Search..",
          hintStyle: Fontstyles.lightTextStyle(context),
          border: UnderlineInputBorder(borderSide: BorderSide.none),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
    );
  }
}
