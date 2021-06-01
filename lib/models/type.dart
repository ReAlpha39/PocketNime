enum ScreenType { TV, OVA, MOVIE }
enum TopType { ANIME, MANGA, PEOPLE, CHARACTERS }
enum TopSubType {
  AIRING,
  UPCOMING,
  TV,
  MOVIE,
  OVA,
  SPECIAL,
  MANGA,
  NOVELS,
  ONESHOTS,
  DOUJIN,
  MANHWA,
  MANHUA,
  BYPOPULARITY,
  FAVORITE
}

final typeValues = EnumValues({
  'Movie': ScreenType.MOVIE,
  'OVA': ScreenType.OVA,
  'TV': ScreenType.TV,
  'anime': TopType.ANIME,
  'manga': TopType.MANGA,
  'people': TopType.PEOPLE,
  'characters': TopType.CHARACTERS,
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
