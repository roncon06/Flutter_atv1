import "dart:convert";

import "package:http/http.dart" as http;

abstract class AbstractService {
  final String url = "http://localhost:3000";

  String recurso();

  Future<void> getAll() async {
    var response = await http.get(Uri.parse("$url/${recurso()}"));
    print(response.body);
  }

  Future<void> getById(int id) async {
    var response = http.get(Uri.parse("$url/${recurso()}"));

    print((await response).body);
  }

  Future<void> createTransacoes(Object body) async {
    var response = http.post(
      Uri.parse("$url/${recurso()}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({"id": 3, "valor": 500, "tipo": "credito"}),
    );
    print((await response).body);
  }

  Future<void> deleteTransacoes(int id) async {
    var response = http.delete(
      Uri.parse("$url/${recurso()}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print((await response).body);
  }

  Future<void> putTransacoes(int id, Object body) async {
    var response = http.put(
      Uri.parse("$url/${recurso()}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print((await response).body);
  }
}
