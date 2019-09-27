import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dog_app/utils/utils_importer.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationState();
  }
}

class BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavyBar(
      selectedIndex: _selectedIndex,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: (index) => setState(() {
        _selectedIndex = index;
      }),
      items: [
        BottomNavyBarItem(
          icon: Image.asset(
              _selectedIndex == 0
                  ? UtilsImporter().stringUtils.homeselected
                  : UtilsImporter().stringUtils.homeunselected,
              width: 25,
              height: 25),
          title: Text(UtilsImporter().stringUtils.home,
              style: TextStyle(color: Colors.white)),
          activeColor: UtilsImporter().colorUtils.primarycolor,
        ),
        BottomNavyBarItem(
          icon: Image.asset(
              _selectedIndex == 1
                  ? UtilsImporter().stringUtils.groupselected
                  : UtilsImporter().stringUtils.groupunselected,
              width: 30,
              height: 30),
          title: Text(UtilsImporter().stringUtils.groups,
              style: TextStyle(color: Colors.white)),
          activeColor: UtilsImporter().colorUtils.primarycolor,
        ),
        BottomNavyBarItem(
          icon: Image.asset(
              _selectedIndex == 2
                  ? UtilsImporter().stringUtils.boneselected
                  : UtilsImporter().stringUtils.boneunselected,
              width: 25,
              height: 25),
          title: Text(UtilsImporter().stringUtils.feed,
              style: TextStyle(color: Colors.white)),
          activeColor: UtilsImporter().colorUtils.primarycolor,
        ),
        BottomNavyBarItem(
          icon: Image.asset(
              _selectedIndex == 3
                  ? UtilsImporter().stringUtils.addselected
                  : UtilsImporter().stringUtils.addunselected,
              width: 25,
              height: 25),
          title: Text(UtilsImporter().stringUtils.vet,
              style: TextStyle(color: Colors.white)),
          activeColor: UtilsImporter().colorUtils.primarycolor,
        ),
      ],
    );
  }
}
