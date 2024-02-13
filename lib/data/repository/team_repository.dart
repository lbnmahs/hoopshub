import 'package:hoopshub/data/provider/team_data_provider.dart';
import 'package:hoopshub/models/team_model.dart';

class TeamRepository {
  final TeamDataProvider teamDataProvider;
  TeamRepository(this.teamDataProvider);

  Future<List<Team>> getTeamsByConference(String conference) async {
    return await teamDataProvider.getTeamsByConference(conference);
  }
}
