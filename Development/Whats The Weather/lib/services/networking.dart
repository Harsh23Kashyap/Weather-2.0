import 'dart:convert';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    Uri myUri = Uri.parse(url);
    http.Response response = await http.get(myUri);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);

      return decodedData;
    } else
      print(response.statusCode);
  }
}
