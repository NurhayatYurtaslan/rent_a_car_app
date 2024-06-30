import 'package:flutter/material.dart';
import 'package:rent_a_car_app/core/widgets/elevated_button_widget.dart';
import 'package:rent_a_car_app/data/car_data.dart';

class OnboardingView extends StatelessWidget {
  
  final Car car;
const OnboardingView({super.key, required this.car});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/onboarding.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    "Premium cars  \nEnjoy the luxury",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Premium and prestige car daily rental.  \nExperience the thrill at a lower price",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButtonWidget(
                    car: car
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
