import 'dart:convert';

import 'package:anipocket/models/constant.dart';
import 'package:anipocket/models/type.dart';

class Genre {
  Genre({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  int? malId;
  AnimeType? type;
  String? name;
  String? url;

  factory Genre.fromJson(String str) => Genre.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Genre.fromMap(Map<String, dynamic> json) => Genre(
        malId: json["mal_id"],
        type: animeTypeValues.map![json["type"]] as AnimeType,
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId,
        "type": animeTypeValues.reverse[type],
        "name": name,
        "url": url,
      };
}
