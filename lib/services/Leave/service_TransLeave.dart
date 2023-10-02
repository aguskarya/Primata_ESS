import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:primata_ess/model/view_TransJadwalShiftWeb.dart';
import 'package:primata_ess/model/view_TransLeaves.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

const _url = SetupUrl.url;
const _idKar = KodeKar.kodekar;
const startDate = StartDate.startDateSetup;
const endDate = EndDate.endDateSetup;

DateTime today = DateTime.now();
//tgl berlaku hari ini
// String startDate = today.toString();
// String endDate = today.add(const Duration(days: 7)).toString();

Future<List<TransLeaves>> getLeaveDetail() async {
  String apiUrl = "$_url/TransLeaves?id=201810024&leave=AL";

  var apiResult = await http
      .get(Uri.parse(apiUrl), headers: {"Accept": "application/json"});

  if (apiResult.statusCode == 200) {
    List<TransLeaves> hasil;
    hasil = (json.decode(apiResult.body) as List)
        .map((e) => TransLeaves.fromJson(e))
        .toList();
    return hasil;
  } else {
    throw Exception(apiResult.reasonPhrase);
  }
}
