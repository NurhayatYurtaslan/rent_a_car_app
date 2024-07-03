import 'package:flutter/material.dart';
import 'package:rent_a_car_app/app/views/view_maps_details/maps_details_view.dart';
import 'package:rent_a_car_app/data/car_data.dart';

class MapsWidget extends StatelessWidget {
  final Car car;

  const MapsWidget({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MapsDetailsView(
              car: car, // Use the provided 'car' instance
            ),
          ),
        );
      },
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/maps.png'),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}
