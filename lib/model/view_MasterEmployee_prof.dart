class ViewMasterEmployeeProfile {
  late String emplId;
  late String employeeName;
  late String division;
  late String department;
  late String position;
  late String category;
  late String levelDescription;
  late String placeOfBirth;
  late String dateOfBirth;
  late String dateRetire;
  late String unitKerja;
  late String levelId;

  ViewMasterEmployeeProfile(
      {required this.emplId,
      required this.employeeName,
      required this.division,
      required this.department,
      required this.position,
      required this.category,
      required this.levelDescription,
      required this.placeOfBirth,
      required this.dateOfBirth,
      required this.dateRetire,
      required this.unitKerja,
      required this.levelId});

  factory ViewMasterEmployeeProfile.fromJson(Map<String, dynamic> json) =>
      ViewMasterEmployeeProfile(
          emplId: json["emplId"],
          employeeName: json["employeeName"],
          division: json["division"],
          department: json["department"],
          position: json["position"],
          category: json["category"],
          levelDescription: json["levelDescription"],
          placeOfBirth: json["placeOfBirth"],
          dateOfBirth: json["dateOfBirth"],
          dateRetire: json["dateRetire"],
          unitKerja: json["unitKerja"],
          levelId: json["levelId"]);
}
