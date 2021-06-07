import 'dart:convert';

class Staff {
  Staff({
    this.malId,
    this.name,
    this.url,
    this.imageUrl,
    this.language,
    this.positions,
  });

  int? malId;
  String? name;
  String? url;
  String? imageUrl;
  String? language;
  List<String>? positions;

  factory Staff.fromJson(String str) => Staff.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Staff.fromMap(Map<String, dynamic> json) => Staff(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        language: json["language"] == null ? null : json["language"],
        positions: json["positions"] == null
            ? null
            : List<String>.from(json["positions"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId == null ? null : malId,
        "name": name == null ? null : name,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "language": language == null ? null : language,
        "positions": positions == null
            ? null
            : List<dynamic>.from(positions!.map((x) => x)),
      };
}
