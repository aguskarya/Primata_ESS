import 'package:flutter/foundation.dart';

class ViewMasterEmployeeList {
  String emplId;
  String nickName;
  String employeeName;
  String position;
  // String personalEmail;

  ViewMasterEmployeeList({
    required this.emplId,
    required this.nickName,
    required this.employeeName,
    required this.position,
    // required this.personalEmail,
  });

  factory ViewMasterEmployeeList.fromJson(Map<String, dynamic> json) =>
      ViewMasterEmployeeList(
        emplId: json["emplId"],
        nickName: json["nickName"],
        employeeName: json["employeeName"],
        position: json["position"],
        // personalEmail: json['personalEmail']
      );

  // ViewMasterEmployeeList.fromJson(Map<String, dynamic> json) {
  //   emplId = json['emplId'];
  //   employeeName = json['employeeName'];
  //   position = json['position'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['emplId'] = emplId;
  //   data['employeeName'] = employeeName;
  //   data['position'] = position;
  //   return data;
  // }
}
