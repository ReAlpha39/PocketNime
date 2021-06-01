// To parse this JSON data, do
//
//     final seasonAnime = seasonAnimeFromMap(jsonString);

import 'dart:convert';

import 'package:anipocket/models/anime/anime_min_info.dart';

class SeasonAnime {
  SeasonAnime({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.seasonName,
    this.seasonYear,
    this.anime,
  });

  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  String? seasonName;
  int? seasonYear;
  List<AnimeMinInfo>? anime;

  factory SeasonAnime.fromJson(String str) =>
      SeasonAnime.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SeasonAnime.fromMap(Map<String, dynamic> json) => SeasonAnime(
        requestHash: json["request_hash"],
        requestCached: json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"],
        seasonName: json["season_name"],
        seasonYear: json["season_year"],
        anime: List<AnimeMinInfo>.from(
            json["anime"].map((x) => AnimeMinInfo.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "request_hash": requestHash,
        "request_cached": requestCached,
        "request_cache_expiry": requestCacheExpiry,
        "season_name": seasonName,
        "season_year": seasonYear,
        "anime": List<AnimeMinInfo>.from(anime!.map((x) => x.toMap())),
      };
}
