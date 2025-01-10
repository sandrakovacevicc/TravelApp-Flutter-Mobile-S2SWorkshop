import 'dart:convert';

import 'package:s2s_radionica/models/destination.dart';
import 'package:http/http.dart' as http;

class DestinationService {
  final String api;

  DestinationService({required this.api});

  Future<List<Destination>> fetchDestinations() async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      var json = response.body;
      final Map<String, dynamic> jsonDecoded = jsonDecode(json);
      final List<dynamic> data =
          jsonDecoded['popular_destinations']['destinations'];

      final List<Destination> destinationData =
          data.map((json) => Destination.fromJson(json)).toList();
      return destinationData;
    } else {
      throw Exception('Neuspesno');
    }
  }
}
