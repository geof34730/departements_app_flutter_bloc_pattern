import 'package:flutter/material.dart';

enum ColorLabel {
  FrenchBlue(Color(0xFF000091));
  const ColorLabel( this.color);

  final Color color;
}

ThemeData getThemeData(){
  return ThemeData(
    useMaterial3:true,
    appBarTheme:  AppBarTheme(
      backgroundColor: ColorLabel.FrenchBlue.color,
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: Colors.white),
      titleSpacing: 0.0,
      centerTitle: true,
      elevation: 15,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),

  );
}
