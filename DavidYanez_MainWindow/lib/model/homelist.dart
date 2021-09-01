import 'package:best_flutter_ui_templates/hotel_booking/hotel_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'images/cancha.png', 
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: 'images/salon.png', 
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath:  'images/restaurante.png', 
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath:  'images/hostal.png', 
      navigateScreen:  HotelHomeScreen(),
    ),
    HomeList(
      imagePath:  'images/salon.png', 
      navigateScreen:  HotelHomeScreen(),
    ),
  ];
}
