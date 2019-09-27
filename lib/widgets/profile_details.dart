import 'package:flutter/material.dart';
import 'package:flutter_dog_app/utils/utils_importer.dart';

class ProfileDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(
            top: 30.0, left: 30.0, right: 30.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(UtilsImporter().stringUtils.dog),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(UtilsImporter().stringUtils.name,
                        style: TextStyle(
                            color: UtilsImporter().colorUtils.blackcolor,
                            fontSize: 13.0,
                            fontFamily:
                            UtilsImporter().stringUtils.proxima_nova,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 5),
                    Text(UtilsImporter().stringUtils.owner,
                        style: TextStyle(
                            color: UtilsImporter().colorUtils.blackcolor,
                            fontSize: 13.0,
                            fontFamily:
                            UtilsImporter().stringUtils.proxima_nova,
                            fontWeight: FontWeight.w400))
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on, color: UtilsImporter().colorUtils.primarycolor, size: 20),
                SizedBox(width : 5),
                Text(UtilsImporter().stringUtils.km,
                    style: TextStyle(
                        color: UtilsImporter().colorUtils.primarycolor,
                        fontSize: 13.0,
                        fontFamily: UtilsImporter().stringUtils.proxima_nova,
                        fontWeight: FontWeight.w500))
              ],
            )
          ],
        ));
  }
}