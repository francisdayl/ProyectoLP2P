import 'package:proyecto2p/model/room_model.dart';
import 'package:proyecto2p/ui/pages/hotel_detail/room/room_item.dart';
import 'package:flutter/material.dart';

class HotelRoomTab extends StatelessWidget {
  final List<Room>? rooms;
  const HotelRoomTab({
    Key? key,
    this.rooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rooms!.length,
      itemBuilder: (context, index) => RoomItem(room: rooms![index]),
    );
  }
}
