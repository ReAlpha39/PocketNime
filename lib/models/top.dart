import 'dart:convert';

import 'package:anipocket/models/type.dart';

class Top {
  Top({
    this.malId,
    this.rank,
    this.title,
    this.url,
    this.imageUrl,
    this.type,
    this.episodes,
    this.startDate,
    this.endDate,
    this.members,
    this.score,
  });

  int? malId;
  int? rank;
  String? title;
  String? url;
  String? imageUrl;
  ScreenType? type;
  int? episodes;
  String? startDate;
  String? endDate;
  int? members;
  double? score;

  factory Top.fromJson(String str) => Top.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Top.fromMap(Map<String, dynamic> json) => Top(
        malId: json["mal_id"],
        rank: json["rank"],
        title: json["title"],
        url: json["url"],
        imageUrl: json["image_url"],
        type: typeValues.map![json["type"]] as ScreenType,
        episodes: json["episodes"],
        startDate: json["start_date"],
        endDate: json["end_date"] == null ? null : json["end_date"],
        members: json["members"],
        score: json["score"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId,
        "rank": rank,
        "title": title,
        "url": url,
        "image_url": imageUrl,
        "type": typeValues.reverse[type],
        "episodes": episodes,
        "start_date": startDate,
        "end_date": endDate == null ? null : endDate,
        "members": members,
        "score": score,
      };
}
