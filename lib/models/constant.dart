const String baseUrl = 'api.jikan.moe';

const String version = 'v3';

enum AnimeType {
  ANIME,
  MANGA,
  TV,
  MOVIE,
  SPECIAL,
  ONA,
  OVA,
  MUSIC,
  DOUJIN,
  MANHWA,
  NOVEL,
  MANHUA,
  ONESHOT
}

enum TopType { ANIME, MANGA, PEOPLE, CHARACTERS }

enum SeasonType { WINTER, SPRING, SUMMER, FALL }

enum Source {
  MANGA,
  LIGHT_NOVEL,
  ORIGINAL,
  WEB_MANGA,
  OTHER,
  NOVEL,
  GAME,
  BOOK,
  PICTURE_BOOK,
  CARD_GAME,
  THE_4_KOMA_MANGA,
  EMPTY,
  VISUAL_NOVEL
}

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
