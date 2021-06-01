import 'package:anipocket/models/constant.dart';

final typeValues = EnumValues({
  "Movie": AnimeType.MOVIE,
  "ONA": AnimeType.ONA,
  "OVA": AnimeType.OVA,
  "Special": AnimeType.SPECIAL,
  "TV": AnimeType.TV,
  'anime': TopType.ANIME,
  'manga': TopType.MANGA,
  'people': TopType.PEOPLE,
  'characters': TopType.CHARACTERS,
  "Fall": SeasonType.FALL,
  "Spring": SeasonType.SPRING,
  "Summer": SeasonType.SUMMER,
  "Winter": SeasonType.WINTER,
  "Book": Source.BOOK,
  "Card game": Source.CARD_GAME,
  "-": Source.EMPTY,
  "Game": Source.GAME,
  "Light novel": Source.LIGHT_NOVEL,
  "Manga": Source.MANGA,
  "Novel": Source.NOVEL,
  "Original": Source.ORIGINAL,
  "Other": Source.OTHER,
  "Picture book": Source.PICTURE_BOOK,
  "4-koma manga": Source.THE_4_KOMA_MANGA,
  "Visual novel": Source.VISUAL_NOVEL,
  "Web manga": Source.WEB_MANGA
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
