// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rent_a_car_app/app/views/view_car_detail/car_detail_view.dart';
import 'package:rent_a_car_app/core/data/car_data.dart';

class CarCardWidget extends StatelessWidget {
  final Car car;
  const CarCardWidget({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CarDetailView(car: car,))
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
            ]),
        child: Column(
          children: [
            Image.asset(
              'assets/images/car_image.png',
              height: 120,
            ),
            Text(
              car.model,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/gps.png'),
                        Text(' ${car.distance.toStringAsFixed(0)}km')
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/pump.png'),
                        Text(' ${car.fuelCapacity.toStringAsFixed(0)}L')
                      ],
                    ),
                  ],
                ),
                Text(
                  '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
