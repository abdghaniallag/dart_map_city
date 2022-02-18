import 'package:dart_map/data/response.dart';
import 'package:dart_map/model/model.dart';

import 'dart:convert';

void main(List<String> arguments) async {
  var jsonFromFile = Response('city_file.json').jsonToString();
  Country contry = Country.fromJson(JsonCodec().decode(await jsonFromFile));
  contry.countries.forEach((key, value) {
    print(key);
    value.forEach((element) {
      print('    $element');
    });
  });
}
