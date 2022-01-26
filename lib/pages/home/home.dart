import 'dart:js';

import 'package:dating_app/pages/home/widgets/desktop.dart';
import 'package:dating_app/pages/home/widgets/mobile.dart';
import 'package:dating_app/responsive.dart';
import 'package:dating_app/style.dart';
import 'package:dating_app/widgets/drawer.dart';
import 'package:dating_app/widgets/navbar_desktop.dart';
import 'package:dating_app/widgets/navbar_mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar:  PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: ResponsiveWidget.isSmallScreen(context)
          ? mobileTopBar(scaffoldKey)
          :  NavBar(),
            ),
      drawer: SideMenu(),
      backgroundColor: bgColor,
      body: ResponsiveWidget(
        largeScreen: DesktopScreen(),
        smallScreen: MobileScreen(),
        mediumScreen: DesktopScreen(),
      ),
    );
  }
}
