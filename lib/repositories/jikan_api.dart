import 'package:anipocket/models/constant.dart';
import 'package:anipocket/models/tops.dart';
import 'package:anipocket/models/type.dart';
import 'package:http/http.dart' as http;

class JikanApi {
  // Fetch top data by type
  Future<Tops> getTop(TopType type, {int? page, TopSubType? subType}) async {
    var path = version + '/top/${typeValues.reverse[type]}';
    if (page != null) {
      path += '/$page';
    } else if (subType != null) {
      path += '/${typeValues.reverse[subType]}';
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
}
