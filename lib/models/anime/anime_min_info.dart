import 'dart:convert';

import 'package:anipocket/models/anime/genre.dart';
import 'package:anipocket/models/constant.dart';
import 'package:anipocket/models/type.dart';

class AnimeMinInfo {
  AnimeMinInfo({
    this.malId,
    this.url,
    this.title,
    this.imageUrl,
    this.synopsis,
    this.type,
    this.airingStart,
    this.episodes,
    this.members,
    this.genres,
    this.source,
    this.producers,
    this.score,
    this.licensors,
    this.r18,
    this.kids,
    this.continuing,
  });

  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  AnimeType? type;
  DateTime? airingStart;
  int? episodes;
  int? members;
  List<Genre>? genres;
  Source? source;
  List<Genre>? producers;
  double? score;
  List<String>? licensors;
  bool? r18;
  bool? kids;
  bool? continuing;

  factory AnimeMinInfo.fromJson(String str) =>
      AnimeMinInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AnimeMinInfo.fromMap(Map<String, dynamic> json) => AnimeMinInfo(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        title: json["title"] == null ? null : json["title"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        type: json["type"] == null ? null : animeTypeValues.map![json["type"]],
        airingStart: json["airing_start"] == null
            ? null
            : DateTime.parse(json["airing_start"]),
        episodes: json["episodes"] == null ? null : json["episodes"],
        members: json["members"] == null ? null : json["members"],
        genres: json["genres"] == null
            ? null
            : List<Genre>.from(json["genres"].map((x) => Genre.fromMap(x))),
        source: json["source"] == null
            ? null
            : sourceTypeValues.map![json["source"]],
        producers: json["producers"] == null
            ? null
            : List<Genre>.from(json["producers"].map((x) => Genre.fromMap(x))),
        score: json["score"] == null ? null : json["score"].toDouble(),
        licensors: json["licensors"] == null
            ? null
            : List<String>.from(json["licensors"].map((x) => x)),
        r18: json["r18"] == null ? null : json["r18"],
        kids: json["kids"] == null ? null : json["kids"],
        continuing: json["continuing"] == null ? null : json["continuing"],
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "title": title == null ? null : title,
        "image_url": imageUrl == null ? null : imageUrl,
        "synopsis": synopsis == null ? null : synopsis,
        "type": type == null ? null : animeTypeValues.reverse[type],
        "airing_start":
            airingStart == null ? null : airingStart!.toIso8601String(),
        "episodes": episodes == null ? null : episodes,
        "members": members == null ? null : members,
        "genres": genres == null
            ? null
            : List<dynamic>.from(genres!.map((x) => x.toMap())),
        "source": source == null ? null : sourceTypeValues.reverse[source],
        "producers": producers == null
            ? null
            : List<dynamic>.from(producers!.map((x) => x.toMap())),
        "score": score == null ? null : score,
        "licensors": licensors == null
            ? null
            : List<dynamic>.from(licensors!.map((x) => x)),
        "r18": r18 == null ? null : r18,
        "kids": kids == null ? null : kids,
        "continuing": continuing == null ? null : continuing,
      };
}
