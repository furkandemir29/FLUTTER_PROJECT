import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {


  Constants._();

  static const String title = '';

  static TextStyle getTitleTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);
  }
  static TextStyle getPokemonNameTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);
  }
  static TextStyle getTypeChipTextStyle() {
    return const TextStyle(
        color: Colors.white,  fontSize: 20);
  }
  static  getPokeInfoTextStyle(){
    return TextStyle(fontSize: 16,color: Colors.black);
  }
  static getPokeInfoLabelTextStyle(){
   return TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black);
  }
}

