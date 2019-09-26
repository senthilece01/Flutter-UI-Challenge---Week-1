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
            '10 man',
            'Age',
            UtilsImporter().colorUtils.orangeColor),
        SizedBox(width: 20),
        BasicInfoCardUI(
            Icons.directions_bike,
            'Male',
            'sex',
            UtilsImporter().colorUtils.redColor),
        SizedBox(width: 20),
        BasicInfoCardUI(
            Icons.directions,
            'Shiba Iu',
            'Breed',
           UtilsImporter().colorUtils.violetColor),
        SizedBox(width: 20),
        BasicInfoCardUI(
            Icons.flight,
            '14kg',
            'Weight',
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
