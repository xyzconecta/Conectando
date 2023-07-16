import 'package:conecta/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = 
    const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: tBlackColor,
      floatingLabelStyle: TextStyle(color: tBlackColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: tOutlineColor)
      ),
    );

  static InputDecorationTheme darkInputDecorationTheme = 
    const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: tWhiteColor,
      floatingLabelStyle: TextStyle(color: tWhiteColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: tWhiteColor)
      ),
    );
}