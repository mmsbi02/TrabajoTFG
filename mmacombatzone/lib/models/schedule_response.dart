// To parse this JSON data, do
//
//     final scheduleResponse = scheduleResponseFromMap(jsonString);

import 'dart:convert';

List<ScheduleResponse> scheduleResponseFromMap(String str) => List<ScheduleResponse>.from(json.decode(str).map((x) => ScheduleResponse.fromMap(x)));

String scheduleResponseToMap(List<ScheduleResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ScheduleResponse {
    int eventId;
    int leagueId;
    String name;
    String shortName;
    int season;
    String day;
    String dateTime;
    String status;
    bool active;

    ScheduleResponse({
        required this.eventId,
        required this.leagueId,
        required this.name,
        required this.shortName,
        required this.season,
        required this.day,
        required this.dateTime,
        required this.status,
        required this.active,
    });

    factory ScheduleResponse.fromMap(Map<String, dynamic> json) => ScheduleResponse(
        eventId: json["EventId"],
        leagueId: json["LeagueId"],
        name: json["Name"],
        shortName: json["ShortName"],
        season: json["Season"],
        day: json["Day"],
        dateTime: json["DateTime"],
        status: json["Status"],
        active: json["Active"],
    );

    Map<String, dynamic> toMap() => {
        "EventId": eventId,
        "LeagueId": leagueId,
        "Name": name,
        "ShortName": shortName,
        "Season": season,
        "Day": day,
        "DateTime": dateTime,
        "Status": status,
        "Active": active,
    };
}
