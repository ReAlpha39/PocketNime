import 'dart:convert';

import 'package:anipocket/models/character_staff/staff.dart';

class Character {
  Character({
    this.malId,
    this.url,
    this.imageUrl,
    this.name,
    this.role,
    this.voiceActors,
  });

  int? malId;
  String? url;
  String? imageUrl;
  String? name;
  String? role;
  List<Staff>? voiceActors;

  factory Character.fromJson(String str) => Character.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Character.fromMap(Map<String, dynamic> json) => Character(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        name: json["name"] == null ? null : json["name"],
        role: json["role"] == null ? null : json["role"],
        voiceActors: json["voice_actors"] == null
            ? null
            : List<Staff>.from(
                json["voice_actors"].map((x) => Staff.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "name": name == null ? null : name,
        "role": role == null ? null : role,
        "voice_actors": voiceActors == null
            ? null
            : List<dynamic>.from(voiceActors!.map((x) => x.toMap())),
      };
}
