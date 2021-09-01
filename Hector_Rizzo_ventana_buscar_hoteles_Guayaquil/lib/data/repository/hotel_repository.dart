import 'dart:async';

import 'package:proyecto2p/model/hotel_model.dart';

abstract class HotelRepository {
  Future<List<HotelModel>> fetchHotels();
}
