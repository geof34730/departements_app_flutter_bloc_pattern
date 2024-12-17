import 'package:flutter/material.dart';

enum ColorLabel {
  blue('Blue', Colors.blue);
  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

ThemeData getThemeData(){
  return ThemeData(
    useMaterial3:true,
    appBarTheme:  AppBarTheme(
      backgroundColor: ColorLabel.blue.color,
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
