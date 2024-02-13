import 'package:hoopshub/models/team_model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class TeamDataProvider {
  final String baseUrl = 'https://www.balldontlie.io/api/v1/teams';
  
  Future<List<Team>> getTeamsByConference(String conference) async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      
      final List<dynamic> data = json.decode(response.body)['data'];

      return data.where(
        (team) => team['conference'] == conference
      ).map(
        (team) => Team.fromJson(team)
      ).toList();

    } catch (e) {
      throw e.toString();
    }
  }
}