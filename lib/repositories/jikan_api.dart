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
      var response = await http.get(Uri.http(baseUrl, path));
      if (response.statusCode == 200) {
        output = SeasonAnime.fromJson(response.body);
      }
    } catch (e) {
      throw "Cannot fetch season anime";
    }
    return output;
  }
}
