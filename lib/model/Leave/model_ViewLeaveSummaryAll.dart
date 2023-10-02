// To parse this JSON data, do
//
//     final view4LeaveSummaryAll = view4LeaveSummaryAllFromJson(jsonString);

import 'dart:convert';

List<View4LeaveSummaryAll> view4LeaveSummaryAllFromJson(String str) =>
    List<View4LeaveSummaryAll>.from(
        json.decode(str).map((x) => View4LeaveSummaryAll.fromJson(x)));

String view4LeaveSummaryAllToJson(List<View4LeaveSummaryAll> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class View4LeaveSummaryAll {
  View4LeaveSummaryAll({
    required this.pinId,
    required this.initialLeave,
    required this.description,
    required this.noUrut,
    required this.lyentitlement,
    required this.lytaken,
    required this.tyentitlement,
    required this.tytaken,
    required this.balance,
    required this.remaining,
  });

  String pinId;
  String initialLeave;
  String description;
  int noUrut;
  double lyentitlement;
  double lytaken;
  int tyentitlement;
  int tytaken;
  double balance;
  double remaining;

  factory View4LeaveSummaryAll.fromJson(Map<String, dynamic> json) =>
      View4LeaveSummaryAll(
        pinId: json["pinId"],
        initialLeave: json["initialLeave"],
        description: json["description"],
        noUrut: json["noUrut"],
        lyentitlement: json["lyentitlement"]?.toDouble(),
        lytaken: json["lytaken"]?.toDouble(),
        tyentitlement: json["tyentitlement"],
        tytaken: json["tytaken"],
        balance: json["balance"]?.toDouble(),
        remaining: json["remaining"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "pinId": pinId,
        "initialLeave": initialLeave,
        "description": description,
        "noUrut": noUrut,
        "lyentitlement": lyentitlement,
        "lytaken": lytaken,
        "tyentitlement": tyentitlement,
        "tytaken": tytaken,
        "balance": balance,
        "remaining": remaining,
      };
}
