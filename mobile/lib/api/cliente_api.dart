import "package:http/http.dart" as http;

class ClienteApi {
  Future<void> getClientes() async {
    final response =
        await http.get(Uri.parse("http://localhost:3000/clientes"));
    print(response);
  }
}
