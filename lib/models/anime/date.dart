import 'dart:convert';

class Date {
  Date({
    this.day,
    this.month,
    this.year,
  });

  int? day;
  int? month;
  int? year;

  factory Date.fromJson(String str) => Date.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Date.fromMap(Map<String, dynamic> json) => Date(
        day: json["day"] == null ? null : json["day"],
        month: json["month"] == null ? null : json["month"],
        year: json["year"] == null ? null : json["year"],
      );

  Map<String, dynamic> toMap() => {
        "day": day == null ? null : day,
        "month": month == null ? null : month,
        "year": year == null ? null : year,
      };
}
