

import 'dart:convert';

List<FightersResponse> fightersResponseFromMap(String str) => List<FightersResponse>.from(json.decode(str).map((x) => FightersResponse.fromMap(x)));

String fightersResponseToMap(List<FightersResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class FightersResponse {
    int fighterId;
    String firstName;
    String? lastName;
    String? nickname;
    String weightClass;
    String? birthDate;
    double? height;
    double? weight;
    double? reach;
    int? wins;
    int? losses;
    int? draws;
    int? noContests;
    int? technicalKnockouts;
    int? technicalKnockoutLosses;
    int? submissions;
    int? submissionLosses;
    int? titleWins;
    int? titleLosses;
    int? titleDraws;
    CareerStats? careerStats;

    FightersResponse({
        required this.fighterId,
        required this.firstName,
        required this.lastName,
        required this.nickname,
        required this.weightClass,
        required this.birthDate,
        required this.height,
        required this.weight,
        required this.reach,
        required this.wins,
        required this.losses,
        required this.draws,
        required this.noContests,
        required this.technicalKnockouts,
        required this.technicalKnockoutLosses,
        required this.submissions,
        required this.submissionLosses,
        required this.titleWins,
        required this.titleLosses,
        required this.titleDraws,
        required this.careerStats,
    });

    factory FightersResponse.fromMap(Map<String, dynamic> json) => FightersResponse(
        fighterId: json["FighterId"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        nickname: json["Nickname"],
        weightClass: json["WeightClass"],
        birthDate: json["BirthDate"],
        height: json["Height"]?.toDouble(),
        weight: json["Weight"]?.toDouble(),
        reach: json["Reach"]?.toDouble(),
        wins: json["Wins"],
        losses: json["Losses"],
        draws: json["Draws"],
        noContests: json["NoContests"],
        technicalKnockouts: json["TechnicalKnockouts"],
        technicalKnockoutLosses: json["TechnicalKnockoutLosses"],
        submissions: json["Submissions"],
        submissionLosses: json["SubmissionLosses"],
        titleWins: json["TitleWins"],
        titleLosses: json["TitleLosses"],
        titleDraws: json["TitleDraws"],
        careerStats: json["CareerStats"] == null ? null : CareerStats.fromMap(json["CareerStats"]),
    );

    Map<String, dynamic> toMap() => {
        "FighterId": fighterId,
        "FirstName": firstName,
        "LastName": lastName,
        "Nickname": nickname,
        "WeightClass": weightClass,
        "BirthDate": birthDate,
        "Height": height,
        "Weight": weight,
        "Reach": reach,
        "Wins": wins,
        "Losses": losses,
        "Draws": draws,
        "NoContests": noContests,
        "TechnicalKnockouts": technicalKnockouts,
        "TechnicalKnockoutLosses": technicalKnockoutLosses,
        "Submissions": submissions,
        "SubmissionLosses": submissionLosses,
        "TitleWins": titleWins,
        "TitleLosses": titleLosses,
        "TitleDraws": titleDraws,
        "CareerStats": careerStats?.toMap(),
    };
}

class CareerStats {
    int fighterId;
    String firstName;
    String? lastName;
    double? sigStrikesLandedPerMinute;
    double sigStrikeAccuracy;
    double? takedownAverage;
    double? submissionAverage;
    double? knockoutPercentage;
    double? technicalKnockoutPercentage;
    double? decisionPercentage;

    CareerStats({
        required this.fighterId,
        required this.firstName,
        required this.lastName,
        required this.sigStrikesLandedPerMinute,
        required this.sigStrikeAccuracy,
        required this.takedownAverage,
        required this.submissionAverage,
        required this.knockoutPercentage,
        required this.technicalKnockoutPercentage,
        required this.decisionPercentage,
    });

    factory CareerStats.fromMap(Map<String, dynamic> json) => CareerStats(
        fighterId: json["FighterId"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        sigStrikesLandedPerMinute: json["SigStrikesLandedPerMinute"]?.toDouble(),
        sigStrikeAccuracy: json["SigStrikeAccuracy"]?.toDouble(),
        takedownAverage: json["TakedownAverage"]?.toDouble(),
        submissionAverage: json["SubmissionAverage"]?.toDouble(),
        knockoutPercentage: json["KnockoutPercentage"]?.toDouble(),
        technicalKnockoutPercentage: json["TechnicalKnockoutPercentage"]?.toDouble(),
        decisionPercentage: json["DecisionPercentage"]?.toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "FighterId": fighterId,
        "FirstName": firstName,
        "LastName": lastName,
        "SigStrikesLandedPerMinute": sigStrikesLandedPerMinute,
        "SigStrikeAccuracy": sigStrikeAccuracy,
        "TakedownAverage": takedownAverage,
        "SubmissionAverage": submissionAverage,
        "KnockoutPercentage": knockoutPercentage,
        "TechnicalKnockoutPercentage": technicalKnockoutPercentage,
        "DecisionPercentage": decisionPercentage,
    };
}
