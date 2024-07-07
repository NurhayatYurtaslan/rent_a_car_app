import 'package:flutter/material.dart';
import 'package:rent_a_car_app/core/widgets/more_widget.dart';
import 'package:rent_a_car_app/core/data/car_data.dart';

class MoreCarListWidget extends StatelessWidget {
  final Car car;
  const MoreCarListWidget({
    super.key, required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return MoreCard(
      car: Car(
        model: car.model,
        distance: car.distance,
        fuelCapacity: car.fuelCapacity,
        pricePerHour: car.pricePerHour,
      ),
    );
  }
}
