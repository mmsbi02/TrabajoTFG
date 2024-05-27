

import 'dart:convert';

FightResponse fightResponseFromMap(String str) => FightResponse.fromMap(json.decode(str));

String fightResponseToMap(FightResponse data) => json.encode(data.toMap());

class FightResponse {
    int fightId;
    int order;
    String status;
    String weightClass;
    String cardSegment;
    String referee;
    int rounds;
    int resultClock;
    int resultRound;
    String resultType;
    dynamic winnerId;
    bool active;
    List<FightStat> fightStats;
    List<Fighter> fighters;

    FightResponse({
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
        required this.fightStats,
        required this.fighters,
    });

    factory FightResponse.fromMap(Map<String, dynamic> json) => FightResponse(
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
        fightStats: List<FightStat>.from(json["FightStats"].map((x) => FightStat.fromMap(x))),
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
        "FightStats": List<dynamic>.from(fightStats.map((x) => x.toMap())),
        "Fighters": List<dynamic>.from(fighters.map((x) => x.toMap())),
    };
}

class FightStat {
    int fighterId;
    String firstName;
    String lastName;
    bool winner;
    int fantasyPoints;
    int fantasyPointsDraftKings;
    int knockdowns;
    int totalStrikesAttempted;
    int totalStrikesLanded;
    int sigStrikesAttempted;
    int sigStrikesLanded;
    int takedownsAttempted;
    int takedownsLanded;
    int takedownsSlams;
    int takedownAccuracy;
    int advances;
    int reversals;
    int submissions;
    int slamRate;
    int timeInControl;
    bool firstRoundWin;
    bool secondRoundWin;
    bool thirdRoundWin;
    bool fourthRoundWin;
    bool fifthRoundWin;
    bool decisionWin;

    FightStat({
        required this.fighterId,
        required this.firstName,
        required this.lastName,
        required this.winner,
        required this.fantasyPoints,
        required this.fantasyPointsDraftKings,
        required this.knockdowns,
        required this.totalStrikesAttempted,
        required this.totalStrikesLanded,
        required this.sigStrikesAttempted,
        required this.sigStrikesLanded,
        required this.takedownsAttempted,
        required this.takedownsLanded,
        required this.takedownsSlams,
        required this.takedownAccuracy,
        required this.advances,
        required this.reversals,
        required this.submissions,
        required this.slamRate,
        required this.timeInControl,
        required this.firstRoundWin,
        required this.secondRoundWin,
        required this.thirdRoundWin,
        required this.fourthRoundWin,
        required this.fifthRoundWin,
        required this.decisionWin,
    });

    factory FightStat.fromMap(Map<String, dynamic> json) => FightStat(
        fighterId: json["FighterId"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        winner: json["Winner"],
        fantasyPoints: json["FantasyPoints"],
        fantasyPointsDraftKings: json["FantasyPointsDraftKings"],
        knockdowns: json["Knockdowns"],
        totalStrikesAttempted: json["TotalStrikesAttempted"],
        totalStrikesLanded: json["TotalStrikesLanded"],
        sigStrikesAttempted: json["SigStrikesAttempted"],
        sigStrikesLanded: json["SigStrikesLanded"],
        takedownsAttempted: json["TakedownsAttempted"],
        takedownsLanded: json["TakedownsLanded"],
        takedownsSlams: json["TakedownsSlams"],
        takedownAccuracy: json["TakedownAccuracy"],
        advances: json["Advances"],
        reversals: json["Reversals"],
        submissions: json["Submissions"],
        slamRate: json["SlamRate"],
        timeInControl: json["TimeInControl"],
        firstRoundWin: json["FirstRoundWin"],
        secondRoundWin: json["SecondRoundWin"],
        thirdRoundWin: json["ThirdRoundWin"],
        fourthRoundWin: json["FourthRoundWin"],
        fifthRoundWin: json["FifthRoundWin"],
        decisionWin: json["DecisionWin"],
    );

    Map<String, dynamic> toMap() => {
        "FighterId": fighterId,
        "FirstName": firstName,
        "LastName": lastName,
        "Winner": winner,
        "FantasyPoints": fantasyPoints,
        "FantasyPointsDraftKings": fantasyPointsDraftKings,
        "Knockdowns": knockdowns,
        "TotalStrikesAttempted": totalStrikesAttempted,
        "TotalStrikesLanded": totalStrikesLanded,
        "SigStrikesAttempted": sigStrikesAttempted,
        "SigStrikesLanded": sigStrikesLanded,
        "TakedownsAttempted": takedownsAttempted,
        "TakedownsLanded": takedownsLanded,
        "TakedownsSlams": takedownsSlams,
        "TakedownAccuracy": takedownAccuracy,
        "Advances": advances,
        "Reversals": reversals,
        "Submissions": submissions,
        "SlamRate": slamRate,
        "TimeInControl": timeInControl,
        "FirstRoundWin": firstRoundWin,
        "SecondRoundWin": secondRoundWin,
        "ThirdRoundWin": thirdRoundWin,
        "FourthRoundWin": fourthRoundWin,
        "FifthRoundWin": fifthRoundWin,
        "DecisionWin": decisionWin,
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
    dynamic moneyline;
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
