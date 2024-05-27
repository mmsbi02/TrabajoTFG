

import 'dart:convert';

List<LeaguesResponse> leaguesResponseFromMap(String str) => List<LeaguesResponse>.from(json.decode(str).map((x) => LeaguesResponse.fromMap(x)));

String leaguesResponseToMap(List<LeaguesResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class LeaguesResponse {
    int leagueId;
    String name;
    String key;

    LeaguesResponse({
        required this.leagueId,
        required this.name,
        required this.key,
    });

    factory LeaguesResponse.fromMap(Map<String, dynamic> json) => LeaguesResponse(
        leagueId: json["LeagueId"],
        name: json["Name"],
        key: json["Key"],
    );

    Map<String, dynamic> toMap() => {
        "LeagueId": leagueId,
        "Name": name,
        "Key": key,
    };
}
