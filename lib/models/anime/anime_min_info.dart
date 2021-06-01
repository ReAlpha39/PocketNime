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

    factory AnimeMinInfo.fromJson(String str) => AnimeMinInfo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AnimeMinInfo.fromMap(Map<String, dynamic> json) => AnimeMinInfo(
        malId: json["mal_id"],
        url: json["url"],
        title: json["title"],
        imageUrl: json["image_url"],
        synopsis: json["synopsis"],
        type: typeValues.map![json["type"]] as AnimeType,
        airingStart: json["airing_start"] == null ? null : DateTime.parse(json["airing_start"]),
        episodes: json["episodes"] == null ? null : json["episodes"],
        members: json["members"],
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromMap(x))),
        source: typeValues.map![json["source"]] as Source,
        producers: List<Genre>.from(json["producers"].map((x) => Genre.fromMap(x))),
        score: json["score"] == null ? null : json["score"].toDouble(),
        licensors: List<String>.from(json["licensors"].map((x) => x)),
        r18: json["r18"],
        kids: json["kids"],
        continuing: json["continuing"],
    );

    Map<String, dynamic> toMap() => {
        "mal_id": malId,
        "url": url,
        "title": title,
        "image_url": imageUrl,
        "synopsis": synopsis,
        "type": typeValues.reverse[type],
        "airing_start": airingStart == null ? null : airingStart!.toIso8601String(),
        "episodes": episodes == null ? null : episodes,
        "members": members,
        "genres": List<dynamic>.from(genres!.map((x) => x.toMap())),
        "source": typeValues.reverse[source],
        "producers": List<dynamic>.from(producers!.map((x) => x.toMap())),
        "score": score == null ? null : score,
        "licensors": List<dynamic>.from(licensors!.map((x) => x)),
        "r18": r18,
        "kids": kids,
        "continuing": continuing,
    };
}