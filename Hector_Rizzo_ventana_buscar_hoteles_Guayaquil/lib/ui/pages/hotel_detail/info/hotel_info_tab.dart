import 'package:proyecto2p/commons/theme.dart';
import 'package:proyecto2p/model/hotel_model.dart';
import 'package:proyecto2p/ui/common/hotel_price_text.dart';
import 'package:proyecto2p/ui/common/ticket_rent.dart';
import 'package:proyecto2p/ui/pages/hotel_detail/info/amenitie_item.dart';
import 'package:flutter/material.dart';

class HotelInformationTab extends StatefulWidget {
  HotelInformationTab({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  final HotelModel hotel;

  @override
  _HotelInformationTabState createState() => _HotelInformationTabState();
}

class _HotelInformationTabState extends State<HotelInformationTab> {
  var selected = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TicketRent(
              title: 'FOR RENT',
              color: primaryColor,
            ),
            HotelPriceText(price: widget.hotel.price.toDouble())
          ],
        ),
        SizedBox(height: 8),
        Text(
          widget.hotel.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w700,
          ),
        ),
        Divider(height: 2, color: Colors.grey),
        SizedBox(height: 14),
        AnimatedContainer(
          width: 200.0,
          height: selected ? 250.0 : 100.0,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Text(widget.hotel.description),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Text(
            selected ? 'Less information' : 'More information',
            style: TextStyle(color: primaryColor),
          ),
        ),
        Text('Amenities', style: Theme.of(context).textTheme.headline6),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 90),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.hotel.amenities.length,
            itemBuilder: (_, index) =>
                AmenitieItem(amenitie: widget.hotel.amenities[index]),
          ),
        ),
      ],
    );
  }
}
