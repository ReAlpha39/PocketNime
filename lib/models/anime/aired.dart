import 'dart:convert';

import 'package:anipocket/models/anime/airing.dart';

class Aired {
  Aired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  DateTime? from;
  DateTime? to;
  Airing? prop;
  String? string;

  factory Aired.fromJson(String str) => Aired.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Aired.fromMap(Map<String, dynamic> json) => Aired(
        from: json["from"] == null ? null : DateTime.parse(json["from"]),
        to: json["to"],
        prop: json["prop"] == null ? null : Airing.fromMap(json["prop"]),
        string: json["string"] == null ? null : json["string"],
      );

  Map<String, dynamic> toMap() => {
        "from": from == null ? null : from!.toIso8601String(),
        "to": to,
        "prop": prop == null ? null : prop!.toMap(),
        "string": string == null ? null : string,
      };
}
