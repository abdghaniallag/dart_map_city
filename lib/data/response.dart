import 'dart:io';
import 'dart:convert';

class Response {
  String path = '';
  Response(this.path);
  Future<String> jsonToString() async {
    var json = File(path).readAsString();

    return json;
  }
}
