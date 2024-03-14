import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF09A816);

const List<Color> _colorTheme = [
  _customColor,
  Color(0xFFA51F1F),
  Color(0xFF000000),
  Color(0xFF12148B),
  Color(0xFF96166B),
  Color(0xFF13C4BB),
  Color(0xFFFF9900),
];

class AppTheme {

  final int selecterColor;

  AppTheme({
    this.selecterColor = 0
  }): assert(selecterColor >= 0 && selecterColor <= _colorTheme.length -1, 'El color tiene que estar entre el 0 y el ${_colorTheme.length}');

  ThemeData theme (){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selecterColor]

    );
  }
}