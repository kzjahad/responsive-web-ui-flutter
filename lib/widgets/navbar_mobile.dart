import 'package:dating_app/style.dart';
import 'package:flutter/material.dart';

Widget mobileTopBar(GlobalKey<ScaffoldState> key) => 
AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: active,
        ),
        onPressed: () {
          key.currentState?.openDrawer();
        },
      ),
      backgroundColor: Colors.transparent,
      title: Image.asset("assets/images/logo.png"),
      centerTitle: true,
      elevation: 0,
    );
