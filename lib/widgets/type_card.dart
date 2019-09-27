import "package:flutter/material.dart";
import 'package:flutter_dog_app/utils/utils_importer.dart';

class TypeCard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TypeCardState();
  }
}

class TypeCardState extends State<TypeCard> {

  String selectedFilter = 'bio';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 10.0, left: 0.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              TypeCardUI(UtilsImporter().stringUtils.bio),
              TypeCardUI(UtilsImporter().stringUtils.chipinfo),
              TypeCardUI(UtilsImporter().stringUtils.features),
            ],
          ),
          Image.asset(UtilsImporter().stringUtils.filter,
              width: 25,
              height: 20),
        ],
      ),
    );
  }

  Widget TypeCardUI(String title){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () {
          selectedFilter = title.toLowerCase();
        },
        child: RawChip(
            padding: EdgeInsets.all(16),
            label: Text(
              title,
              style: TextStyle(
                  fontFamily: UtilsImporter().stringUtils.proxima_nova, fontWeight: selectedFilter == title.toLowerCase() ? FontWeight.w500 : FontWeight.w400),
            ),
            labelStyle: TextStyle(
                color: selectedFilter == title.toLowerCase()
                    ? UtilsImporter().colorUtils.blackcolor
                    : UtilsImporter().colorUtils.graycolor,
                fontSize: 15.0),
            backgroundColor : Colors.white
        ),
      ),
    );
  }
}