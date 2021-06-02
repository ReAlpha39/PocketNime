import 'dart:convert';

import 'package:anipocket/models/anime/date.dart';

class Airing {
  Airing({
    this.from,
    this.to,
  });

  Date? from;
  Date? to;

  factory Airing.fromJson(String str) => Airing.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Airing.fromMap(Map<String, dynamic> json) => Airing(
        from: json["from"] == null ? null : Date.fromMap(json["from"]),
        to: json["to"] == null ? null : Date.fromMap(json["to"]),
      );

  Map<String, dynamic> toMap() => {
        "from": from == null ? null : from!.toMap(),
        "to": to == null ? null : to!.toMap(),
      };
}
