import 'package:flutter/material.dart';
import 'package:rent_a_car_app/core/widgets/car_card_widget.dart';
import 'package:rent_a_car_app/data/car_data.dart';

class CarListView extends StatelessWidget {
  final List<Car> cars = [
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
  ];

  CarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCardWidget(car: cars[index]);
        },
      ),
    );
  }
}
