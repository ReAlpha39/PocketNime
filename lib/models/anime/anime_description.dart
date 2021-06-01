// To parse this JSON data, do
//
//     final anime = animeFromMap(jsonString);

import 'dart:convert';

import 'package:anipocket/models/anime/aired.dart';
import 'package:anipocket/models/anime/genre.dart';
import 'package:anipocket/models/anime/related.dart';

class AnimeDescription {
  AnimeDescription({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.malId,
    this.url,
    this.imageUrl,
    this.trailerUrl,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.premiered,
    this.broadcast,
    this.related,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.openingThemes,
    this.endingThemes,
  });

  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  int? malId;
  String? url;
  String? imageUrl;
  String? trailerUrl;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  dynamic background;
  String? premiered;
  String? broadcast;
  Related? related;
  List<Genre>? producers;
  List<Genre>? licensors;
  List<Genre>? studios;
  List<Genre>? genres;
  List<String>? openingThemes;
  List<String>? endingThemes;

  factory AnimeDescription.fromJson(String str) =>
      AnimeDescription.fromMap(json.decode(str));

  String? toJson() => json.encode(toMap());

  factory AnimeDescription.fromMap(Map<String, dynamic> json) =>
      AnimeDescription(
        requestHash: json["request_hash"],
        requestCached: json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"],
        malId: json["mal_id"],
        url: json["url"],
        imageUrl: json["image_url"],
        trailerUrl: json["trailer_url"],
        title: json["title"],
        titleEnglish: json["title_english"],
        titleJapanese: json["title_japanese"],
        titleSynonyms: List<String>.from(json["title_synonyms"].map((x) => x)),
        type: json["type"],
        source: json["source"],
        episodes: json["episodes"],
        status: json["status"],
        airing: json["airing"],
        aired: Aired.fromMap(json["aired"]),
        duration: json["duration"],
        rating: json["rating"],
        score: json["score"].toDouble(),
        scoredBy: json["scored_by"],
        rank: json["rank"],
        popularity: json["popularity"],
        members: json["members"],
        favorites: json["favorites"],
        synopsis: json["synopsis"],
        background: json["background"],
        premiered: json["premiered"],
        broadcast: json["broadcast"],
        related: Related.fromMap(json["related"]),
        producers:
            List<Genre>.from(json["producers"].map((x) => Genre.fromMap(x))),
        licensors:
            List<Genre>.from(json["licensors"].map((x) => Genre.fromMap(x))),
        studios: List<Genre>.from(json["studios"].map((x) => Genre.fromMap(x))),
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromMap(x))),
        openingThemes: List<String>.from(json["opening_themes"].map((x) => x)),
        endingThemes: List<String>.from(json["ending_themes"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "request_hash": requestHash,
        "request_cached": requestCached,
        "request_cache_expiry": requestCacheExpiry,
        "mal_id": malId,
        "url": url,
        "image_url": imageUrl,
        "trailer_url": trailerUrl,
        "title": title,
        "title_english": titleEnglish,
        "title_japanese": titleJapanese,
        "title_synonyms": List<dynamic>.from(titleSynonyms!.map((x) => x)),
        "type": type,
        "source": source,
        "episodes": episodes,
        "status": status,
        "airing": airing,
        "aired": aired!.toMap(),
        "duration": duration,
        "rating": rating,
        "score": score,
        "scored_by": scoredBy,
        "rank": rank,
        "popularity": popularity,
        "members": members,
        "favorites": favorites,
        "synopsis": synopsis,
        "background": background,
        "premiered": premiered,
        "broadcast": broadcast,
        "related": related!.toMap(),
        "producers": List<dynamic>.from(producers!.map((x) => x.toMap())),
        "licensors": List<dynamic>.from(licensors!.map((x) => x.toMap())),
        "studios": List<dynamic>.from(studios!.map((x) => x.toMap())),
        "genres": List<dynamic>.from(genres!.map((x) => x.toMap())),
        "opening_themes": List<dynamic>.from(openingThemes!.map((x) => x)),
        "ending_themes": List<dynamic>.from(endingThemes!.map((x) => x)),
      };
}
