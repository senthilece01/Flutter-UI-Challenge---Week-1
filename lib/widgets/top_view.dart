import 'package:flutter/material.dart';
import 'package:flutter_dog_app/utils/utils_importer.dart';

class TopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Container(
      width: screenWidth,
      height: screenHeight * 0.40,
      decoration: BoxDecoration(
          color: UtilsImporter().colorUtils.primarycolor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0))),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 12),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  // 1 a)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.search),
                        iconSize: 25,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        iconSize: 25,
                        color: Colors.white,
                        onPressed: () {},
                      )
                    ],
                  ),

                  // 1 b)
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          UtilsImporter().stringUtils.iam,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontFamily:
                                  UtilsImporter().stringUtils.proxima_nova,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(width: 10),
                        Text(
                          UtilsImporter().stringUtils.ricky,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontFamily:
                                  UtilsImporter().stringUtils.proxima_nova,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),

                  // 1 c)
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Image.asset('assets/dog.png',
                        width: screenWidth, height: screenHeight * 0.18),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
