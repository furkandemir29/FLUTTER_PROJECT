// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

lolHeros lolHerosFromJson(String str) => lolHeros.fromJson(json.decode(str));

String welcomeToJson(lolHeros data) => json.encode(data.toJson());

class lolHeros {
  lolHeros({
    this.heroName,
    this.role,
    this.picture,
    this.desc,
    this.hardLevel,
    this.passive,
    this.q,
    this.w,
    this.e,
    this.r,
    this.costumes,
    this.roleDesc,
  });

  String? heroName;
  int? role;
  String? picture;
  String? desc;
  String? hardLevel;
  String? passive;
  String? q;
  String? w;
  String? e;
  String? r;
  dynamic? costumes;
  String? roleDesc;

  factory lolHeros.fromJson(Map<String, dynamic> json) => lolHeros(
        heroName: json["heroName"],
        role: json["role"],
        picture: json["picture"],
        desc: json["desc"],
        hardLevel: json["hardLevel"],
        passive: json["passive"],
        q: json["q"],
        w: json["w"],
        e: json["e"],
        r: json["r"],
        costumes: json["costumes"],
        roleDesc: json["roleDesc"],
      );

  Map<String, dynamic> toJson() => {
        "heroName": heroName,
        "role": role,
        "picture": picture,
        "desc": desc,
        "hardLevel": hardLevel,
        "passive": passive,
        "q": q,
        "w": w,
        "e": e,
        "r": r,
        "costumes": costumes,
        "roleDesc": roleDesc,
      };
}
