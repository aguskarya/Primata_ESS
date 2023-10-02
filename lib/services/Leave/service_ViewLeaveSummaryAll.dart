import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:primata_ess/model/Leave/model_ViewLeaveSummaryAll.dart';
import 'package:primata_ess/model/view_TransLeaves.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

const _url = SetupUrl.url;
const _idKar = KodeKar.kodekar;

DateTime today = DateTime.now();
//tgl berlaku hari ini
// String startDate = today.toString();
// String endDate = today.add(const Duration(days: 7)).toString();

Future<List<View4LeaveSummaryAll>> listLeaveSummary() async {
  String apiUrl = "$_url/View4_LeaveSummaryAll?id=201810001";

  var apiResult = await http
      .get(Uri.parse(apiUrl), headers: {"Accept": "application/json"});

  if (apiResult.statusCode == 200) {
    List<View4LeaveSummaryAll> hasil;
    hasil = (json.decode(apiResult.body) as List)
        .map((e) => View4LeaveSummaryAll.fromJson(e))
        .toList();
    return hasil;
  } else {
    throw Exception(apiResult.reasonPhrase);
  }
}
