import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:primata_ess/model/view_MasterEmployee_prof.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

Future<ViewMasterEmployeeProfile> getEmployeeProfile() async {
  const _url = SetupUrl.url;
  const _kodekar = KodeKar.kodekar;
  final response = await http
      .get(Uri.parse("$_url/ViewMasterEmployeeList/$_kodekar"), headers: {
    "Accept": "application/json",
    "Access-Control-Allow-Origin": "*"
  });
  if (response.statusCode == 200) {
    return ViewMasterEmployeeProfile.fromJson(json.decode(response.body)[0]);
  } else {
    throw Exception("failed to load Employee");
  }
}
