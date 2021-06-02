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
    this.animeList,
  });

  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  String? seasonName;
  int? seasonYear;
  List<AnimeMinInfo>? animeList;

  factory SeasonAnime.fromJson(String str) =>
      SeasonAnime.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SeasonAnime.fromMap(Map<String, dynamic> json) => SeasonAnime(
      requestHash: json["request_hash"] == null ? null : json["request_hash"],
      requestCached:
          json["request_cached"] == null ? null : json["request_cached"],
      requestCacheExpiry: json["request_cache_expiry"] == null
          ? null
          : json["request_cache_expiry"],
      seasonName: json["season_name"] == null ? null : json["season_name"],
      seasonYear: json["season_year"] == null ? null : json["season_year"],
      animeList: json["anime"] == null
          ? null
          : List<AnimeMinInfo>.from(
              json["anime"].map((x) => AnimeMinInfo.fromMap(x)),
            ));

  Map<String, dynamic> toMap() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry":
            requestCacheExpiry == null ? null : requestCacheExpiry,
        "season_name": seasonName == null ? null : seasonName,
        "season_year": seasonYear == null ? null : seasonYear,
        "anime": animeList == null
            ? null
            : List<dynamic>.from(animeList!.map((x) => x.toMap())),
      };
}
