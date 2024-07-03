import 'package:flutter/material.dart';
import 'package:rent_a_car_app/core/widgets/avatar_widget.dart';
import 'package:rent_a_car_app/core/widgets/car_card_widget.dart';
import 'package:rent_a_car_app/core/widgets/maps_widget.dart';
import 'package:rent_a_car_app/core/widgets/more_car_list_widget.dart';
import 'package:rent_a_car_app/data/car_data.dart';

class CarDetailView extends StatelessWidget {
  final Car car;

  const CarDetailView({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            SizedBox(
              width: 2,
            ),
            Text(
              "Information",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCardWidget(
            car: Car(
              model: car.model,
              distance: car.distance,
              fuelCapacity: car.fuelCapacity,
              pricePerHour: car.pricePerHour,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const AvatarWidget(),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: MapsWidget(
                    car: Car(
                      model: 'Fortuner GR',
                      distance: 970,
                      fuelCapacity: 50,
                      pricePerHour: 45,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCarListWidget(car: car),
                const SizedBox(
                  height: 5,
                ),
                MoreCarListWidget(car: car),
                const SizedBox(
                  height: 5,
                ),
                MoreCarListWidget(car: car),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
