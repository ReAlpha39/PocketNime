import 'package:anipocket/models/anime/anime_description.dart';
import 'package:anipocket/models/character_staff/character_staff.dart';
import 'package:anipocket/models/constant.dart';
import 'package:anipocket/models/season/season_anime.dart';
import 'package:anipocket/models/tops.dart';
import 'package:anipocket/models/type.dart';
import 'package:http/http.dart' as http;

class JikanApi {
  // Fetch top data by type
  Future<Tops> getTop(TopType type, {int? page, TopSubType? subType}) async {
    var path = version + '/top/${topTypeValues.reverse[type]}';
    if (page != null) {
      path += '/$page';
    } else if (subType != null) {
      path += '/${topTypeValues.reverse[subType]}';
    }
    var output;
    try {
      var response = await http.get(Uri.http(baseUrl, path));
      if (response.statusCode == 200) {
        output = Tops.fromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  // Fetch this season anime
  Future<SeasonAnime> getSeasonAnime(
      {int? year, SeasonType? seasonType}) async {
    var path = version + '/season';
    if (year != null && seasonType != null) {
      path += '/$year/${seasonTypeValues.reverse[seasonType]!.toLowerCase()}';
    }
    SeasonAnime output = SeasonAnime();
    try {
      var response = await http.get(
        Uri.https(baseUrl, path),
        headers: {
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        output = SeasonAnime.fromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  // Fetch detail anime
  Future<AnimeDescription> getAnimeDescription(String id) async {
    String path = version + '/anime/' + id;
    AnimeDescription output = AnimeDescription();
    try {
      var response = await http.get(Uri.https(baseUrl, path));
      if (response.statusCode == 200) {
        output = AnimeDescription.fromJson(response.body);
      } else {
        print("Http status code: " + response.statusCode.toString());
      }
    } catch (e) {
      print("Cannot fetch anime description, error: " + e.toString());
    }
    return output;
  }

  Future<CharacterStaff> getAnimeCharacterStaff(String id) async {
    String path = version + '/anime/' + id + "/characters_staff";
    CharacterStaff data = CharacterStaff();
    try {
      var response = await http.get(Uri.https(baseUrl, path));
      if (response.statusCode == 200) {
        data = CharacterStaff.fromJson(response.body);
      } else {
        print("Http status code: " + response.statusCode.toString());
      }
    } catch (e) {
      print("Cannot fetch anime character staff, error: " + e.toString());
    }
    return data;
  }
}
