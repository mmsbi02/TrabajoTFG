import 'dart:convert';
List<FightersResponse> fightersResponseFromMap(String str) =>
    List<FightersResponse>.from(
        json.decode(str).map((x) => FightersResponse.fromMap(x)));
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
  });
  factory FightersResponse.fromMap(Map<String, dynamic> json) =>
      FightersResponse(
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
      );
}
