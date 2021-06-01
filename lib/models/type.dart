import 'package:anipocket/models/constant.dart';

final animeTypeValues = EnumValues({
  "anime": AnimeType.ANIME,
  "manga": AnimeType.MANGA,
  "Movie": AnimeType.MOVIE,
  "Special": AnimeType.SPECIAL,
  "ONA": AnimeType.ONA,
  "OVA": AnimeType.OVA,
  "TV": AnimeType.TV,
  "Manhua": AnimeType.MANHUA,
  "Manhwa": AnimeType.MANHWA,
  "Novel": AnimeType.NOVEL,
  "Music": AnimeType.MUSIC,
  "Oneshot": AnimeType.ONESHOT,
  "Doujin": AnimeType.DOUJIN
});

final topTypeValues = EnumValues({
  'anime': TopType.ANIME,
  'manga': TopType.MANGA,
  'people': TopType.PEOPLE,
  'characters': TopType.CHARACTERS,
});

final seasonTypeValues = EnumValues({
  "Fall": SeasonType.FALL,
  "Spring": SeasonType.SPRING,
  "Summer": SeasonType.SUMMER,
  "Winter": SeasonType.WINTER,
});

final sourceTypeValues = EnumValues({
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
