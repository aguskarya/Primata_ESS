import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:primata_ess/model/MasterEmployee/master_Employee.dart';
import 'package:primata_ess/model/view_MasterEmployee_prof.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

Future<MasterKaryawans> getEmployee() async {
  const _url = SetupUrl.url;
  const _kodekar = KodeKar.kodekar;
  final response = await http.get(Uri.parse("$_url/MasterKaryawans/$_kodekar"),
      headers: {
        "Accept": "application/json",
        "Access-Control-Allow-Origin": "*"
      });
  if (response.statusCode == 200) {
    return MasterKaryawans.fromJson(json.decode(response.body)[0]);
  } else {
    throw Exception("failed to load Employee");
  }
}
