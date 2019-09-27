import 'package:flutter/material.dart';
import 'package:flutter_dog_app/utils/utils_importer.dart';
import 'package:flutter_dog_app/widgets/basic_info.dart';
import 'package:flutter_dog_app/widgets/bottom_navigation.dart';
import 'package:flutter_dog_app/widgets/top_view.dart';
import 'package:flutter_dog_app/widgets/type_card.dart';
import 'package:flutter_dog_app/widgets/profile_details.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // 1
            TopView(),

            // 2
            TypeCard(),

            // 3
            BasicInfoCard(),

            // 4)
            ProfileDetailsWidget(),

            // 5)
            Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: 30.0, right: 20.0, bottom: 10.0),
              child: Text(UtilsImporter().stringUtils.feed_description,
                  style: TextStyle(
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: UtilsImporter().colorUtils.blackcolor,
                      fontSize: 15.0,
                      fontFamily: UtilsImporter().stringUtils.proxima_nova,
                      fontWeight: FontWeight.w400)),
            ),

          ],
        ),
      ),
        bottomNavigationBar: BottomNavigation()
    );
  }
}
