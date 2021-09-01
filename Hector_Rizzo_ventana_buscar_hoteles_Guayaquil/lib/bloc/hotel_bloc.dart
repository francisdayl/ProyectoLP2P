import 'package:proyecto2p/data/network/failure_error_handler.dart';
import 'package:proyecto2p/data/repository/hotel_repository.dart';
import 'package:proyecto2p/data/repository/remote_hotel_repository.dart';
import 'package:proyecto2p/dependencies.dart';
import 'package:proyecto2p/model/hotel_model.dart';
import 'package:flutter/material.dart';

class HotelBloc extends ChangeNotifier {
  HotelRepository repository = getIt<RemoteHotelRepository>();

  /// Private list of [HotelModel]
  List<HotelModel>? _hotels;

  /// Public getter for hotels
  List<HotelModel>? get hotels => _hotels;

  /// [Failure] instance
  Failure? _failure;
  Failure? get failure => _failure;

  Future<void> retrieveHotels() async {
    try {
      _hotels = await repository.fetchHotels();
    } on Failure catch (e) {
      _failure = e;
    }
    notifyListeners();
  }
}
