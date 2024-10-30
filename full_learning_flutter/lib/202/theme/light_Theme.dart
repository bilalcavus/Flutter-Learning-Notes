import 'package:flutter/material.dart';

class LightTheme {

final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme (){
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20))),
        color: Color.fromARGB(255, 255, 255, 255)),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.light(onPrimary: Colors.purpleAccent, onSecondary: _lightColor.blueMana)),
      colorScheme: const ColorScheme.light(),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all(Colors.green),
        side: BorderSide(color: Colors.green)
      ),
    textTheme: ThemeData.light().textTheme.copyWith(
      titleLarge:  TextStyle(
        fontSize: 20,
        color: _lightColor._textColor
      ) 
     )
    );
   } 
  }
 
class _LightColor {
  final Color _textColor = Color.fromARGB(255, 172, 89, 89);
  final Color blueMana = const Color.fromARGB(95, 188, 248, 1);
}