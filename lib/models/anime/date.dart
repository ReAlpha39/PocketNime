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
        day: json["day"],
        month: json["month"],
        year: json["year"],
    );

    Map<String, dynamic> toMap() => {
        "day": day,
        "month": month,
        "year": year,
    };
}