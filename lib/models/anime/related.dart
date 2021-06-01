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
        adaptation:
            List<Genre>.from(json["Adaptation"].map((x) => Genre.fromMap(x))),
        prequel: List<Genre>.from(json["Prequel"].map((x) => Genre.fromMap(x))),
        other: List<Genre>.from(json["Other"].map((x) => Genre.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Adaptation": List<dynamic>.from(adaptation!.map((x) => x.toMap())),
        "Prequel": List<dynamic>.from(prequel!.map((x) => x.toMap())),
        "Other": List<dynamic>.from(other!.map((x) => x.toMap())),
      };
}
