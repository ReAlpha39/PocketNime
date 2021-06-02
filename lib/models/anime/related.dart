import 'dart:convert';

import 'package:anipocket/models/anime/genre.dart';

class Related {
  Related({
    this.adaptation,
    this.prequel,
    this.other,
  });

  List<Genre>? adaptation;
  List<Genre>? prequel;
  List<Genre>? other;

  factory Related.fromJson(String str) => Related.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Related.fromMap(Map<String, dynamic> json) => Related(
        adaptation: json["Adaptation"] == null
            ? null
            : List<Genre>.from(json["Adaptation"].map((x) => Genre.fromMap(x))),
        prequel: json["Prequel"] == null
            ? null
            : List<Genre>.from(json["Prequel"].map((x) => Genre.fromMap(x))),
        other: json["Other"] == null
            ? null
            : List<Genre>.from(json["Other"].map((x) => Genre.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Adaptation": adaptation == null
            ? null
            : List<dynamic>.from(adaptation!.map((x) => x.toMap())),
        "Prequel": prequel == null
            ? null
            : List<dynamic>.from(prequel!.map((x) => x.toMap())),
        "Other": other == null
            ? null
            : List<dynamic>.from(other!.map((x) => x.toMap())),
      };
}
