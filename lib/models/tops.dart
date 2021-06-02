import 'dart:convert';

import 'package:anipocket/models/top.dart';

class Tops {
  Tops({
    this.top,
  });

  List<Top>? top;

  factory Tops.fromJson(String str) => Tops.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Tops.fromMap(Map<String, dynamic> json) => Tops(
        top: json["top"] == null
            ? null
            : List<Top>.from(json["top"].map((x) => Top.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "top":
            top == null ? null : List<dynamic>.from(top!.map((x) => x.toMap())),
      };
}
