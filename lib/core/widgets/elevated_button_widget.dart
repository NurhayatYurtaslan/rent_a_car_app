import 'package:flutter/material.dart';
import 'package:rent_a_car_app/app/views/view_car/car_list_view.dart';
import 'package:rent_a_car_app/data/car_data.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Car car;
  ElevatedButtonWidget({
    super.key, required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 54,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => CarListView(car: Car(
        model: car.model,
        distance: car.distance,
        fuelCapacity: car.fuelCapacity,
        pricePerHour: car.pricePerHour,
      ),))
                              , (route) => false);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        child: const Text(
          "Let's Go",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}