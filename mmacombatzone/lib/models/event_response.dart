

import 'dart:convert';


EventResponse eventResponseFromMap(String str) => EventResponse.fromMap(json.decode(str));


class EventResponse {
    int eventId;
    int leagueId;
    String name;
    String shortName;
    int season;
    String day;
    String dateTime;
    String status;
    bool active;
    List<EventResponse> fights;

    EventResponse({
        required this.eventId,
        required this.leagueId,
        required this.name,
        required this.shortName,
        required this.season,
        required this.day,
        required this.dateTime,
        required this.status,
        required this.active,
        required this.fights,
    });
    factory EventResponse.fromJson(String str) => EventResponse.fromMap(json.decode(str));

    factory EventResponse.fromMap(Map<String, dynamic> json) => EventResponse(
        eventId: json["EventId"],
        leagueId: json["LeagueId"],
        name: json["Name"],
        shortName: json["ShortName"],
        season: json["Season"],
        day: json["Day"],
        dateTime: json["DateTime"],
        status: json["Status"],
        active: json["Active"],
        fights: List<EventResponse>.from(json["Fights"].map((x) => EventResponse.fromMap(x))),
    );

   
}



