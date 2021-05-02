import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final config = {
    'baseUrl': Platform.environment['TEST TEST'],
    'credentials': Platform.environment['TEST CRED'],
  };

  final filename = 'lib/.env.dart';
  File(filename).writeAsString('final environment = ${json.encode(config)};');
}