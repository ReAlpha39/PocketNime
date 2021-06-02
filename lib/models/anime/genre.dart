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
        malId: json["mal_id"] == null ? null : json["mal_id"],
        type: json["type"] == null ? null : animeTypeValues.map![json["type"]],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId == null ? null : malId,
        "type": type == null ? null : animeTypeValues.reverse[type],
        "name": name == null ? null : name,
        "url": url == null ? null : url,
      };
}
