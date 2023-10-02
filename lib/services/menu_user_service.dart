import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:primata_ess/model/menu_user.dart';
import 'package:primata_ess/model/view_MasterEmployee.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

Future<MenuUsers> getMenuUser() async {
  const _url = SetupUrl.url;
  final response = await http.get(Uri.parse("$_url/MenuUsers/hrm"),
      headers: {"Accept": "application/json"});
  if (response.statusCode >= 200 && response.statusCode < 300) {
    return MenuUsers.fromJson(json.decode(response.body));
  } else {
    throw Exception("failed to load User data");
  }
}

// Future postMenuUser() async {
//   try {
//     final response = await http.post(Uri.parse("$_url/")),
//   } catch (e) {
//     print(e.toString());
//   }
// }
