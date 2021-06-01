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
        from: DateTime.parse(json["from"]),
        to: DateTime.parse(json["to"]),
        prop: Airing.fromMap(json["prop"]),
        string: json["string"],
      );

  Map<String, dynamic> toMap() => {
        "from": from!.toIso8601String(),
        "to": to!.toIso8601String(),
        "prop": prop!.toMap(),
        "string": string,
      };
}
