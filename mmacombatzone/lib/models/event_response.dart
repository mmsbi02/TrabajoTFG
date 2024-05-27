

import 'dart:convert';

EventResponse eventResponseFromMap(String str) => EventResponse.fromMap(json.decode(str));

String eventResponseToMap(EventResponse data) => json.encode(data.toMap());

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
    List<Fight> fights;

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
        fights: List<Fight>.from(json["Fights"].map((x) => Fight.fromMap(x))),
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
        "Fights": List<dynamic>.from(fights.map((x) => x.toMap())),
    };
}

class Fight {
    int fightId;
    int? order;
    String status;
    String weightClass;
    String cardSegment;
    String referee;
    int? rounds;
    int? resultClock;
    int? resultRound;
    String resultType;
    int? winnerId;
    bool active;
    List<Fighter> fighters;

    Fight({
        required this.fightId,
        required this.order,
        required this.status,
        required this.weightClass,
        required this.cardSegment,
        required this.referee,
        required this.rounds,
        required this.resultClock,
        required this.resultRound,
        required this.resultType,
        required this.winnerId,
        required this.active,
        required this.fighters,
    });

    factory Fight.fromMap(Map<String, dynamic> json) => Fight(
        fightId: json["FightId"],
        order: json["Order"],
        status: json["Status"],
        weightClass: json["WeightClass"],
        cardSegment: json["CardSegment"],
        referee: json["Referee"],
        rounds: json["Rounds"],
        resultClock: json["ResultClock"],
        resultRound: json["ResultRound"],
        resultType: json["ResultType"],
        winnerId: json["WinnerId"],
        active: json["Active"],
        fighters: List<Fighter>.from(json["Fighters"].map((x) => Fighter.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "FightId": fightId,
        "Order": order,
        "Status": status,
        "WeightClass": weightClass,
        "CardSegment": cardSegment,
        "Referee": referee,
        "Rounds": rounds,
        "ResultClock": resultClock,
        "ResultRound": resultRound,
        "ResultType": resultType,
        "WinnerId": winnerId,
        "Active": active,
        "Fighters": List<dynamic>.from(fighters.map((x) => x.toMap())),
    };
}

class Fighter {
    int fighterId;
    String firstName;
    String lastName;
    int preFightWins;
    int preFightLosses;
    int preFightDraws;
    int preFightNoContests;
    bool winner;
    int moneyline;
    bool active;

    Fighter({
        required this.fighterId,
        required this.firstName,
        required this.lastName,
        required this.preFightWins,
        required this.preFightLosses,
        required this.preFightDraws,
        required this.preFightNoContests,
        required this.winner,
        required this.moneyline,
        required this.active,
    });

    factory Fighter.fromMap(Map<String, dynamic> json) => Fighter(
        fighterId: json["FighterId"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        preFightWins: json["PreFightWins"],
        preFightLosses: json["PreFightLosses"],
        preFightDraws: json["PreFightDraws"],
        preFightNoContests: json["PreFightNoContests"],
        winner: json["Winner"],
        moneyline: json["Moneyline"],
        active: json["Active"],
    );

    Map<String, dynamic> toMap() => {
        "FighterId": fighterId,
        "FirstName": firstName,
        "LastName": lastName,
        "PreFightWins": preFightWins,
        "PreFightLosses": preFightLosses,
        "PreFightDraws": preFightDraws,
        "PreFightNoContests": preFightNoContests,
        "Winner": winner,
        "Moneyline": moneyline,
        "Active": active,
    };
}
