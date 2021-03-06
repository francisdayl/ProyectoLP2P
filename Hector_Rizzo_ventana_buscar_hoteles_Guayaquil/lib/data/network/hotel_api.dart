import 'dart:async';
import 'dart:convert';
import 'package:proyecto2p/model/hotel_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HotelApi {
  final String _baseUrl = 'https://raw.githubusercontent.com';
  final String _endPoint =
      '/enzoftware/hotel_booking_app/master/server/hotels.json';

  Client client = http.Client();

  Future<List<HotelModel>> getHotels() async {
    final data = await client.get(Uri.parse(_baseUrl + _endPoint));
    final responseList = json.decode(data.body);
    await Future.delayed(Duration(seconds: 2));
    return [for (final hotel in responseList) HotelModel.fromJson(hotel)];
  }
}
