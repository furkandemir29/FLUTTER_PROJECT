
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_pokedex/model/model.dart';


class PokeApi{
  static const String _url ='http://13.80.244.188/lol/api/v1/Mobil/Hero/GetHero';

  static Future<List<lolHeros>> getPokemonData() async{
    List<lolHeros> _list = [];

    var result = await Dio().get(_url);
    var heroList = (result.data)['heros'];
    if(heroList is List){
      _list = heroList.map((e) => lolHeros.fromJson(e)).toList();
    }else{
      return [];
    }
    debugPrint(_list.toString());
    return _list;
}
}