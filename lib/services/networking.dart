import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper{

  NetworkHelper(this.url);
  String url;

  Future getData() async{
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      String locationName = jsonDecode(data)['location']['name'];
      print(locationName);
      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }
  }
}