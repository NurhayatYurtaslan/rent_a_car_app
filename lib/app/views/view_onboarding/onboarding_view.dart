import 'package:flutter/material.dart';
import 'package:rent_a_car_app/core/widgets/elevated_button_widget.dart';
import 'package:rent_a_car_app/gen/assets.gen.dart';


class OnboardingView extends StatelessWidget {
  
const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.images.onboarding.path),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                Text(
                  "Premium cars  \nEnjoy the luxury",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Premium and prestige car daily rental.  \nExperience the thrill at a lower price",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButtonWidget(
                 
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
