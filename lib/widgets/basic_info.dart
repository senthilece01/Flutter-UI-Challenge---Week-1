import 'package:flutter/material.dart';
import 'package:flutter_dog_app/utils/utils_importer.dart';

class BasicInfoCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 30),
        BasicInfoCardUI(
            Icons.home,
            UtilsImporter().stringUtils.man,
            UtilsImporter().stringUtils.age,
            UtilsImporter().colorUtils.orangeColor),
        SizedBox(width: 20),
        BasicInfoCardUI(
            Icons.directions_bike,
            UtilsImporter().stringUtils.male,
            UtilsImporter().stringUtils.sex,
            UtilsImporter().colorUtils.redColor),
        SizedBox(width: 20),
        BasicInfoCardUI(
            Icons.directions,
            UtilsImporter().stringUtils.shibainu,
            UtilsImporter().stringUtils.breed,
           UtilsImporter().colorUtils.violetColor),
        SizedBox(width: 20),
        BasicInfoCardUI(
            Icons.flight,
            UtilsImporter().stringUtils.kg,
            UtilsImporter().stringUtils.weight,
            UtilsImporter().colorUtils.orangeColor),
      ],
    );
  }

  Widget BasicInfoCardUI(IconData iconData, String text, String description, Color color){
   return Container(
      height: 70,
      width: 70,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(text, style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontFamily: UtilsImporter().stringUtils.proxima_nova,
              fontWeight: FontWeight.w500)),
          SizedBox(height: 5),
          Text(description, style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontFamily: UtilsImporter().stringUtils.proxima_nova,
              fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
