import 'dart:convert';

import 'package:anipocket/models/character_staff/character.dart';
import 'package:anipocket/models/character_staff/staff.dart';

class CharacterStaff {
  CharacterStaff({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.characters,
    this.staff,
  });

  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  List<Character>? characters;
  List<Staff>? staff;

  factory CharacterStaff.fromJson(String str) =>
      CharacterStaff.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CharacterStaff.fromMap(Map<String, dynamic> json) => CharacterStaff(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached:
            json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null
            ? null
            : json["request_cache_expiry"],
        characters: json["characters"] == null
            ? null
            : List<Character>.from(
                json["characters"].map((x) => Character.fromMap(x))),
        staff: json["staff"] == null
            ? null
            : List<Staff>.from(json["staff"].map((x) => Staff.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry":
            requestCacheExpiry == null ? null : requestCacheExpiry,
        "characters": characters == null
            ? null
            : List<dynamic>.from(characters!.map((x) => x.toMap())),
        "staff": staff == null
            ? null
            : List<dynamic>.from(staff!.map((x) => x.toMap())),
      };
}
