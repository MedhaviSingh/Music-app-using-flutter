import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart';
import '../models/user_model.dart';

class UserRepository {
  String endpoint =
      'https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=d43d92316a08ac70cbfc54a0d9ffdda0';
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['track_list'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
